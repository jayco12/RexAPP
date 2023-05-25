import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rex/components/utilities/submit.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../components/header_footer/top_bar.dart';
import '../../components/utilities/constants.dart';
import 'locations.dart' as locations;

class SelectLocation extends StatefulWidget {
  SelectLocation({Key? key}) : super(key: key);

  @override
  State<SelectLocation> createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocation> {
  final Map<String, Marker> _markers = {};
  Future<void> _onMapCreated(GoogleMapController controller) async {
    final googleOffices = await locations.getGoogleOffices();
    setState(() {
      _markers.clear();
      for (final office in googleOffices.offices) {
        final marker = Marker(
          markerId: MarkerId(office.name),
          position: LatLng(office.lat, office.lng),
          infoWindow: InfoWindow(
            title: office.name,
            snippet: office.address,
          ),
        );
        _markers[office.name] = marker;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 120),
        child: TopBar(
          phonenavigator: InkResponse(
            onTap: () {
              context.router.pushNamed('/our-contact');
            },
            child: const Icon(Icons.phone),
          ),
          infonavigator: InkResponse(
            onTap: () {
              //widget.infonavigator;
            },
            child: const Icon(Icons.info_outline_rounded),
          ),
          aboutnavigator: InkResponse(
            onTap: () {
              context.router.pushNamed('/about-us');
            },
            child: const Icon(Icons.group_rounded),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                const SizedBox(
                  height: 24.0,
                ),
                const Center(
                  child: SizedBox(
                    width: 300.0,
                    height: 30.0,
                    child: CupertinoSearchTextField(
                      placeholder: 'Rechercher ou entrer votre adresse',
                      style: kUserInfoHolder,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                GoogleMap(
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: const CameraPosition(
                    target: LatLng(0, 0),
                    zoom: 2,
                  ),
                  markers: _markers.values.toSet(),
                ),
                const SizedBox(
                  height: 96.0,
                ),
                const Submit(
                  margin: EdgeInsets.only(left: 116.0, right: 116.0),
                  text: 'AJOUTEZ L\'ADRESSE',
                ),
                const SizedBox(
                  height: 30.0,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
