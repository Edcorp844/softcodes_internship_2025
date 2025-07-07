import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/views/others/conversation_page.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  int _selectedSegment = 1;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar.search(
            largeTitle: const Text('Chats'),
            searchField: const CupertinoSearchTextField(),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: CupertinoSegmentedControl<int>(
                children: const {1: Text('All'), 2: Text('Groups')},
                groupValue: _selectedSegment,
                onValueChanged: (int index) {
                  setState(() {
                    _selectedSegment = index;
                  });
                  print('Selected segment: $index');
                },
              ),
            ),
          ),
          SliverList.builder(
            itemCount: 100,
            itemBuilder: (contex, index) {
              return CupertinoListTile(
                leading: CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                    'https://www.bu.edu/files/2013/05/v2_MF-Headshot-030813.jpg',
                  ),
                ),
                title: Text('Otema John'),
                subtitle: Text('Hey John, How are you?'),
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) {
                        return ConversationPage();
                      },
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
