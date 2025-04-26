class ChatModel {
  final String image_url;
  final String sender;
  final String last_message;
  final String time;
  final int newMsgsCount;

  ChatModel({
    required this.image_url,
    required this.sender,
    required this.last_message,
    required this.time,
    required this.newMsgsCount,
  });
}
