import 'package:flutter/cupertino.dart';
import 'package:myapp/views/core/chats.dart';
import 'package:myapp/widgets/navigation/cutom_nav_bar.dart';

void main() {
  runApp(WhatsApp());
}

class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(home: Home());
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Stack(
        children: [
          Chats(),
          Positioned(bottom: 0, right: 0, left: 0, child: CustomNavBar()),
        ],
      ),
    );
  }
}
