import 'package:flutter/material.dart';
import 'package:rex/gaz_page.dart';
import 'package:rex/services.dart';
import 'package:rex/bottom_navigation_bar.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('REX'),
        centerTitle: false,
        actions: [
          Icon(Icons.phone),
          SizedBox(width: 20.0),
          Icon(Icons.info),
          SizedBox(width: 20.0),
          Icon(Icons.person),
          SizedBox(width: 10.0),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Cliquez sur votre choix',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 50.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Services(
                service: 'GAZ',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GazPage(),
                    ),
                  );
                },
              ),
              SizedBox(width: 30.0),
              Services(
                service: 'SALON',
                onTap: () {},
              ),
            ],
          ),
          //SizedBox(height: 312.4,),
          Divider(
            color: Color(0xFFEDC75C),
            thickness: 3.0,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}


