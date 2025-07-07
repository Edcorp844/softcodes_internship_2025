import 'package:flutter/cupertino.dart';

class BarItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool selected;
  final VoidCallback  onTap;
  const BarItem({super.key, required this.icon, required this.label, required this.selected, required this.onTap});

  @override
  Widget build(BuildContext context) {
   return GestureDetector(
    onTap: onTap,
    child: AnimatedContainer(duration: Duration(milliseconds: 200),
    height: 50,
    width: 80,
    decoration: BoxDecoration(
      color: selected? const Color.fromARGB(58, 52, 199, 89): null,
      borderRadius: BorderRadius.circular(50)
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: selected ? CupertinoTheme.of(context).primaryColor : CupertinoColors.inactiveGray,),
        Text(label, style: TextStyle(color: selected ? CupertinoTheme.of(context).primaryColor : CupertinoColors.inactiveGray, fontSize: 12),),
      ]),
    )
   );
  }
}