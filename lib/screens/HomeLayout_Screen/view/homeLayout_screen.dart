import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lavie/components/components.dart';
import 'package:lavie/screens/Cart_Search/cart_screen.dart';
import 'package:lavie/screens/Forums_Screen/forums_screen.dart';
import 'package:lavie/screens/Product_Screen/product_screen.dart';
import 'package:lavie/screens/Profile_Screen/profile_screen.dart';
import 'package:lavie/screens/QrScanner_Screen/qrScanner_screen.dart';

import '../../../components/widgets/default_text_form_field.dart';
import '../../../const/consts.dart';
import '../../Notifactions_Screen/notifactions_screen.dart';
import '../../Search_Screen/search_screen.dart';

class HomeLayoutScreen extends StatefulWidget {
  const HomeLayoutScreen({Key? key}) : super(key: key);

  @override
  State<HomeLayoutScreen> createState() => _HomeLayoutScreenState();
}

class _HomeLayoutScreenState extends State<HomeLayoutScreen> {
  // const HomeLayoutScreen({Key? key}) : super(key: key);
  int currentIndex = 2;
  final searchController = TextEditingController();
  final screens = [
    ForumsScreen(),
    QrScannerScreen(),
    ProductScreen(),
    NotifactionsScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 9,
          backgroundColor: Colors.white70,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.black,
          currentIndex: currentIndex,
          showUnselectedLabels: false,
          selectedFontSize: 15,
          iconSize: 22,
          onTap: (index) => setState(() => currentIndex = index),
          items: [
            BottomNavigationBarItem(
                icon: Image.asset('assets/images/leave1.png'), label: 'Seeds'),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/QrCode.png'),
              label: 'Scan',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/Bell.png'),
              label: 'Notifacations',
            ),
            BottomNavigationBarItem(
                icon: Image.asset('assets/images/Group.png'), label: 'Profile')
          ],
        ));
  }
}
