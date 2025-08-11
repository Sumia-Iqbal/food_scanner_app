
import 'package:flutter/material.dart';
import 'package:food_scanner_app/views/layouts/scan_page.dart';
import 'package:food_scanner_app/views/layouts/settings_page.dart';
import 'package:food_scanner_app/views/layouts/wallet_page.dart';
import 'package:get/get.dart';

import '../views/layouts/home_page.dart';
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
      floatingActionButton: FloatingActionButton(onPressed: (){
        selectedIndex.value = 2;

      },

      child: Icon(Icons.qr_code,size:20),

      ),

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
