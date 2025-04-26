import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_model.dart';

class ItemListChat extends StatelessWidget {
  final ChatModel model;

  const ItemListChat({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    Widget isThereNewMsg;
    if (model.newMsgsCount > 0) {
      isThereNewMsg = CircleAvatar(
        radius: 10,
        backgroundColor: Colors.green,
        child: Text(
          model.newMsgsCount.toString(),
          style: TextStyle(color: Colors.white,fontSize: 10),
        ),
      );
    } else {
      isThereNewMsg = Text("");
    }
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.fromLTRB(12, 10, 12, 10),
        child: Row(
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
                  Text(model.sender, maxLines: 1),
                  Text(
                    model.last_message,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ],
              ),
            ),
            SizedBox(width: 20),
            Column(
              children: [Text(model.time), isThereNewMsg],
              crossAxisAlignment: CrossAxisAlignment.end,
            ),
          ],
        ),
      ),
    );
  }
}
