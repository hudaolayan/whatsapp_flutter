import 'package:flutter/material.dart';
import 'package:whatsapp/models/settings_model.dart';

class ItemListSettings extends StatelessWidget {
  final SettingsModel model;

  const ItemListSettings({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.fromLTRB(18, 20, 18, 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            model.icon,
            SizedBox(width: 18),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.title,
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  Text(
                    model.description,
                    maxLines: 1,
                    style: TextStyle(fontSize: 14, color: Colors.grey),
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
