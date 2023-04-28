// import 'package:cloud_firestore/cloud_firestore.dart';



// class CloudFunctions {
//   //static instanc
//   static final firebaseInstance = FirebaseFirestore.instance;

//   //collection references
//   static final CollectionReference users = firebaseInstance.collection('users');

//   Future<void> addToCart(String uid, Map<String, dynamic> productMap) async {
//     await users.doc(uid).collection('cart').add(productMap);
//   }

//   //get from cart
//   Future<List<QueryDocumentSnapshot>> getFromCart(String uid) async {
//     final result = await users.doc(uid).collection('cart').get();
//     print('${result.docs.length}');
//     return result.docs;
//   }
// }
