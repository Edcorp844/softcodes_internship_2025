import 'package:flutter/cupertino.dart';

class BarItem extends StatefulWidget {
  final IconData icon;
  final String text;
  const BarItem({super.key, required this.icon, required this.text});

  @override
  State<BarItem> createState() => _BarItemState();
}

class _BarItemState extends State<BarItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color.fromARGB(57, 255, 255, 255),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(widget.icon),
          Text(widget.text, style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
