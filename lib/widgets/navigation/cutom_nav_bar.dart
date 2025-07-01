import 'package:flutter/cupertino.dart';
import 'package:myapp/widgets/navigation/bar_item.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            padding: const EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              color: const Color.fromARGB(41, 238, 242, 246),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              children: [
                BarItem(icon: CupertinoIcons.chat_bubble_2, text: 'Chats'),
                BarItem(icon: CupertinoIcons.person_alt, text: 'Statuses'),
                BarItem(icon: CupertinoIcons.settings, text: 'Settings'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
