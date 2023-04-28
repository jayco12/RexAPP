
// mport 'dart:html';

// import 'package:flutter/material.dart';
// import 'package:joe_and_getx/model/data_model.dart';

// class ListOfData extends StatefulWidget {
//   static const routeName = '/listpage';
//   const ListOfData({super.key});

//   @override
//   State<ListOfData> createState() => _ListOfDataState();
// }

// class _ListOfDataState extends State<ListOfData> {
//   final name = TextEditingController();
//   final date = TextEditingController();

//   final list = datalist;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView.builder(
//           itemCount: datalist.length,
//           itemBuilder: (_, i) => ListTile(
//                 leading: CircleAvatar(child: Image.asset(list[i].img)),
//                 title: Text('${list[i].name}'),
//                 subtitle: Text('${list[i].data}'),
//               )),
//       floatingActionButton: FloatingActionButton.extended(
//           onPressed: () {
//             showDialog(
//                 context: context,
//                 builder: (_) => AlertDialog(
//                       content: Form(
//                           child: Column(
//                         children: [
//                           TextField(
//                             controller: name,
//                           ),
//                           TextField(
//                             controller: date,
//                           ),
//                         ],
//                       )),
//                       actions: [
//                         TextButton(
//                             onPressed: () {
//                               setState(() {
//                                 datalist.add(
//                                     Gaz(name.text, date.text, 'assets/images/db.png'));
//                               });
//                               name.clear();
//                               date.clear();
//                               Navigator.of(context).pop();
//                             },
//                             child: const Text('Add'))
// child: const Text('Add'))
//                       ],
//                     ));
//           },
//           label: (Row(
//             children: const [Icon(Icons.add), Text('Add Data')],
//           ))),
//     );
//   }
// }