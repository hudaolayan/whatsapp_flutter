import 'package:flutter/material.dart';
import 'package:whatsapp/models/call_model.dart';
import 'package:whatsapp/models/call_status.dart';
import 'package:whatsapp/widgets/call_icon.dart';

class ItemListCall extends StatelessWidget {
  final CallModel model;

  const ItemListCall({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(12, 10, 12, 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(model.image_url),
          ),
          SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.sender,
                  maxLines: 1,
                  style: TextStyle(
                    color:
                        (model.status == CallStatus.OUTGOING
                            ? Colors.black
                            : Colors.red),
                  ),
                ),
                Row(
                  children: [CallIcon(status: model.status), Text(model.time)],
                ),
              ],
            ),
          ),
          SizedBox(width: 20),
          InkWell(onTap: () {}, child: Icon(Icons.call_outlined)),
        ],
      ),
    );
  }
}
