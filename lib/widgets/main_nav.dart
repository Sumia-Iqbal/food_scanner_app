
import 'package:flutter/material.dart';
import 'package:food_scanner_app/views/layouts/scan_page.dart';
import 'package:food_scanner_app/views/layouts/settings_page.dart';
import 'package:food_scanner_app/views/layouts/wallet_page.dart';
import 'package:get/get.dart';

import '../views/layouts/home_page.dart';
import '../views/layouts/scan_page.dart';
import 'custom_navigation.dart';


class MainNav extends StatelessWidget {
  MainNav({Key? key}) : super(key: key);

  final RxInt selectedIndex = 0.obs;

  final List<Widget> screens = [
    HomePage(),
    WalletPage(),
    ScanPage(),
    SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      floatingActionButton:GestureDetector(
        onTap: (){
          selectedIndex.value = 2;

        },
        child: Container(
        height:100,width:100,
        child: Icon(Icons.qr_code,size:35,color:Colors.white),
          decoration:BoxDecoration(color:Colors.lightGreen,
          shape:BoxShape.circle,
            boxShadow: [
              BoxShadow(color:Colors.lightGreen.withOpacity(0.3),

              blurRadius:5,
                spreadRadius: 10,
                offset: Offset(0, 0)
              )
            ]
          )

        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      body: screens[selectedIndex.value],
      bottomNavigationBar: CustomNavigation(
        selectedIndex: selectedIndex.value,
        onItemTapped: (int index) {
          selectedIndex.value = index;
        },
      ),
    ));
  }
}
