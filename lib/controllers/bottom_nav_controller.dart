import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavController extends GetxController {
  // selected index as reactive
  final RxInt selectedIndex = 0.obs;

  void changeIndex(int i) {
    if (selectedIndex.value == i) return;
    selectedIndex.value = i;
    // example navigation logic (change to your routes)
    switch (i) {
      case 0:
        Get.toNamed('/home');
        break;
      case 1:
        Get.toNamed('/calendar');
        break;
      case 2:
        Get.toNamed('/messages');
        break;
      case 3:
        Get.toNamed('/profile');
        break;
    }
  }
}