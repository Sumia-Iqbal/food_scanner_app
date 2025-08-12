import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../controllers/bottom_nav_controller.dart';

class CustomBottomNavBar extends StatelessWidget {
  CustomBottomNavBar({Key? key}) : super(key: key);

  // put the controller (safe to call here in a stateless widget)
  final BottomNavController controller = Get.put(BottomNavController());

  final List<IconData> icons = [
    Icons.home_rounded,
    Icons.calendar_today_rounded,
    Icons.mail_rounded,
    Icons.person_rounded,
  ];

  final List<String> labels = [
    'Home',
    'Calendar',
    'Messages',
    'Profile',
  ];

  @override
  Widget build(BuildContext context) {
    // colors — change to match your theme
    final Color bg = Colors.white;
    final Color primary = Color(0xFF6C63FF); // example purple
    final Color inactive = Colors.grey.shade400;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
        child: Obx(
              () {
            final selected = controller.selectedIndex.value;
            return Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
              decoration: BoxDecoration(
                color: bg,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.06),
                    blurRadius: 20,
                    offset: Offset(0, 8),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(icons.length, (index) {
                  final bool isActive = index == selected;
                  // Active item: rounded pill with icon + label (like screenshot)
                  if (isActive) {
                    return GestureDetector(
                      onTap: () => controller.changeIndex(index),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18, vertical: 8),
                        decoration: BoxDecoration(
                          color: primary.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              icons[index],
                              color: primary,
                              size: 22,
                            ),
                            const SizedBox(width: 10),
                            // label text
                            Text(
                              labels[index],
                              style: TextStyle(
                                color: primary,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }

                  // Inactive item: just icon button
                  return GestureDetector(
                    onTap: () => controller.changeIndex(index),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Icon(
                        icons[index],
                        color: inactive,
                        size: 24,
                      ),
                    ),
                  );
                }),
              ),
            );
          },
        ),
      ),
    );
  }
}