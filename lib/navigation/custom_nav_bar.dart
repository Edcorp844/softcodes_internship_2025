import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:myapp/navigation/bar_item.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int selectedIndex = 0;

  void onTabselected(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
              child: Container(
                padding: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(78, 238, 242, 246),
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: CupertinoColors.separator.resolveFrom(context),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    BarItem(
                      icon: CupertinoIcons.chat_bubble_2,
                      label: 'Chats',
                      selected: selectedIndex == 0,
                      onTap:(){ onTabselected(0);},
                    ),
                    BarItem(
                      icon: CupertinoIcons.circle_grid_hex,
                      label: 'Updates',
                      selected: selectedIndex == 1,
                      onTap:(){ onTabselected(1);},
                    ),
                    BarItem(
                      icon: CupertinoIcons.settings,
                      label: 'Settings',
                     selected: selectedIndex == 2,
                      onTap:(){ onTabselected(2);},
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Spacer(),
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(78, 238, 242, 246),
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: CupertinoColors.separator.resolveFrom(context),
                  ),
                ),
                child: Icon(CupertinoIcons.command),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
