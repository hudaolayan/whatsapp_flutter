import 'package:flutter/material.dart';
import 'package:whatsapp/models/call_status.dart';

class CallIcon extends StatelessWidget {
  final CallStatus status;

  const CallIcon({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    Widget icon;

    switch (status) {
      case CallStatus.INCOMING:
        icon = Icon(Icons.call_received, color: Colors.red,size: 16,);
        break;
      case CallStatus.OUTGOING:
        icon = Icon(Icons.call_made, color: Colors.green,size: 16);
        break;
      case CallStatus.MISSED:
        icon = Icon(Icons.call_missed, color: Colors.red,size: 16);
        break;
    }
    return icon;
  }
}
