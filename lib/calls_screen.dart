import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:whatsapp/models/call_model.dart';
import 'package:whatsapp/utils/dummy_data.dart';
import 'package:whatsapp/widgets/item_list_call.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({super.key});

  @override
  State<CallsScreen> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.calls)),
      body: ListView.builder(
        itemBuilder: (context, index) {
          CallModel model = DummyData.callItems[index];

          return ItemListCall(model: model);
        },
        scrollDirection: Axis.vertical,
        itemCount: DummyData.callItems.length,
      ),
    );
  }
}
