class Converstion {
  final Profile profile;
  final List<Message> messages;

  Converstion({required this.profile, required this.messages});
}

class Profile {
  final String name;
  final String imageUrl;
  final String lastMessage;
  final DateTime lastMessageTime;
  final bool isOnline;
  final int unreadMessages;
  final bool isGroup;
  final String caption;

  Profile({
    required this.name,
    required this.imageUrl,
    required this.lastMessage,
    required this.lastMessageTime,
    required this.isOnline,
    required this.unreadMessages,
    required this.isGroup,
    required this.caption,
  });
}

class Message {
  final String sender;
  final String content;
  final DateTime timestamp;
  final bool read;

  Message({
    required this.sender,
    required this.content,
    required this.timestamp,
    required this.read,
  });
}