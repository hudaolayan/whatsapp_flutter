import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:whatsapp/models/chat_model.dart';
import 'package:whatsapp/utils/dummy_data.dart';
import 'package:whatsapp/widgets/item_list_chat.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.chats)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.maps_ugc_outlined),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          ChatModel model = DummyData.chatItems[index];

          return ItemListChat(model: model);
        },
        scrollDirection: Axis.vertical,
        itemCount: DummyData.chatItems.length,
      ),
    );
  }
}
