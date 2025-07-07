import 'package:flutter/cupertino.dart';
import 'package:myapp/navigation/custom_nav_bar.dart';
import 'package:myapp/views/core/chats.dart';
import 'package:myapp/views/core/settings.dart';
import 'package:myapp/views/core/updates.dart';


void main() {
  runApp(WhatsApp());
}

class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(primaryColor: CupertinoColors.activeGreen),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  List<Widget> pages = <Widget>[Chats(), Updates(), Settings()];
  void changePage(int pageNumber) {
    setState(() {
      selectedIndex = pageNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Stack(
        children: [
          pages[selectedIndex],
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: CustomNavBar(onTabselected: changePage),
          ),
        ],
      ),
    );
  }
}
