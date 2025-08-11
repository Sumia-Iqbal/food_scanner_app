import 'package:flutter/material.dart';

class CustomNavigation extends StatelessWidget {
  final int selectedIndex;
  final Function(int index) onItemTapped;

  const CustomNavigation({
    Key? key,
    required this.selectedIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> icons = [
      Icon(Icons.home, color: selectedIndex == 0 ? Colors.lightGreen : Colors.white,size:35),
      Icon(Icons.wallet, color: selectedIndex == 1 ? Colors.lightGreen : Colors.white,size:35),
      const SizedBox(width: 48), // Space for FAB
      Icon(Icons.map, color: selectedIndex == 3 ? Colors.lightGreen : Colors.white,size:35),
      Icon(Icons.settings, color: selectedIndex == 4 ? Colors.lightGreen : Colors.white,size:35),
    ];

    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 8.0,
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            icons.length,
                (index) => GestureDetector(
              onTap: () => onItemTapped(index),
              child: icons[index],
            ),
          ),
        ),
      ),
    );
  }
}
