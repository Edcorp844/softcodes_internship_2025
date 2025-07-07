import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConversationPage extends StatelessWidget {
  const ConversationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final messages = [
      {'text': 'Hey, how are you?', 'isMe': false},
      {'text': 'I’m good! You?', 'isMe': true},
      {'text': 'Doing well. Let’s meet later.', 'isMe': false},
      {'text': 'Sure, what time?', 'isMe': true},
    ];

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        previousPageTitle: 'Chats',
        middle: const Text('Conversation'),
        trailing: const Icon(CupertinoIcons.phone),
      ),
      child: SafeArea(
        child: Column(
          children: [
            // Chat List
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(10),
                itemCount: messages.length,
                reverse: false,
                itemBuilder: (context, index) {
                  final message = messages[index];
                  return Align(
                    alignment:
                        message['isMe'] == true
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 10,
                      ),
                      margin: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 8,
                      ),
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.7,
                      ),
                      decoration: BoxDecoration(
                        color:
                            message['isMe'] == true
                                ? CupertinoColors.activeGreen
                                : CupertinoColors.systemGrey5,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        '${message['text']!}',
                        style: TextStyle(
                          color:
                              message['isMe'] == true
                                  ? CupertinoColors.white
                                  : CupertinoColors.black,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            // Input Field
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 6.0,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: CupertinoTextField(
                      placeholder: 'Type a message',
                      padding: const EdgeInsets.all(12),
                    ),
                  ),
                  const SizedBox(width: 8),
                  CupertinoButton(
                    padding: EdgeInsets.zero,
                    child: const Icon(
                      CupertinoIcons.arrow_up_circle_fill,
                      size: 30,
                      color: CupertinoColors.activeGreen,
                    ),
                    onPressed: () {
                      // Send action
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
