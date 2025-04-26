import 'package:whatsapp/models/call_status.dart';

class CallModel {
  final String image_url;
  final String sender;
  final String time;
  final CallStatus status;

  CallModel({
    required this.image_url,
    required this.sender,
    required this.status,
    required this.time,
  });
}
