import 'package:flutter/material.dart';
import 'package:rex/components/top_bar.dart';
import 'package:rex/views/gaz_page.dart';
import 'package:rex/views/home_page.dart';
import 'package:rex/components/rex_colors.dart';
import 'package:rex/views/salon_page.dart';
import 'package:rex/views/user_info.dart';



// class HomeView extends StatefulWidget {
//   const HomeView({Key? key}) : super(key: key);
//
//   @override
//   State<HomeView> createState() => _HomeViewState();
// }
//
// class _HomeViewState extends State<HomeView> {
//   int _index = 0;
//
//   final _pages = [
//     HomePage(),
//     UserInfo(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _pages[_index],
//       bottomNavigationBar: BaseButton(
//         index: _index,
//         onTap: (index) {
//           setState(() {
//             _index = index;
//           });
//         },
//       ),
//     );
//   }
// }
//
// class BaseButton extends StatelessWidget {
//   const BaseButton({Key? key, required this.index, required this.onTap}) : super(key: key);
//
//   final int index;
//   final void Function(int index) onTap;
//
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       onTap: onTap,
//       currentIndex: index,
//       selectedItemColor: RexColors.textColor,
//       unselectedItemColor: RexColors.orderColorShadow,
//       showSelectedLabels: true,
//       showUnselectedLabels: false,
//       iconSize: 30.0,
//       backgroundColor: RexColors.pageColor,
//       elevation: 12.0,
//       items: [
//         BottomNavigationBarItem(
//           icon:Icon(Icons.home,),
//           label: 'Home',),
//         BottomNavigationBarItem(
//             icon: Icon(Icons.shopping_cart_sharp,),
//             label: 'Cart'),
//         BottomNavigationBarItem(
//             icon: Icon(Icons.person,),
//             label: 'User'),
//       ],
//
//     );
//   }
// }
class BaseButton extends StatefulWidget {
  const BaseButton({Key? key}) : super(key: key);

  @override
  _BaseButtonState createState() => _BaseButtonState();
}

class _BaseButtonState extends State<BaseButton> {
  int pageIndex = 0;

  static const List pages = [
    const BaseButton(),
    // const Cart(),
    const GazPage(),
    const SalonPage(),
  ];
  void onItemTapped(int index) {
    setState(() {
      pageIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: true,
      showUnselectedLabels: false,
      iconSize: 30.0,
      backgroundColor: RexColors.pageColor,
      elevation: 12.0,
      items: [
        BottomNavigationBarItem(
          icon:Icon(Icons.home,),
          label: 'Home',),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_sharp,),
            label: 'Cart'),
        BottomNavigationBarItem(
            icon: Icon(Icons.person,),
            label: 'User'),
      ],
      selectedItemColor: RexColors.textColor,
      unselectedItemColor: RexColors.orderColorShadow,
      currentIndex: pageIndex,
      onTap: onItemTapped,
      );
  }
}



