import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:whatsapp/models/settings_model.dart';
import 'package:whatsapp/widgets/item_list_settings.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    List<SettingsModel> settingsList = [
      SettingsModel(
        icon: Icon(Icons.key_outlined, color: Colors.grey),
        title: AppLocalizations.of(context)!.account,
        description: AppLocalizations.of(context)!.accountDescription,
      ),
      SettingsModel(
        icon: Icon(Icons.lock_outline, color: Colors.grey),
        title: AppLocalizations.of(context)!.privacy,
        description: AppLocalizations.of(context)!.privacyDescription,
      ),
      SettingsModel(
        icon: Icon(Icons.notifications_outlined, color: Colors.grey),
        title: AppLocalizations.of(context)!.notifications,
        description: AppLocalizations.of(context)!.notificationsDescription,
      ),
      SettingsModel(
        icon: Icon(Icons.language_outlined, color: Colors.grey),
        title: AppLocalizations.of(context)!.appLanguage,
        description: AppLocalizations.of(context)!.appLanguageDescription,
      ),
      SettingsModel(
        icon: Icon(Icons.help_outline, color: Colors.grey),
        title: AppLocalizations.of(context)!.help,
        description: AppLocalizations.of(context)!.helpDescription,
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.settings)),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 10),
              CircleAvatar(
                radius: 40,
                foregroundImage: NetworkImage(
                  "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Huda Sha'foot",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    Text(
                      "Hey There, I'm using WhatsApp!!",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Icon(Icons.add_circle_outline, color: Colors.green,size: 20,),
              SizedBox(width: 16),
            ],
          ),
          SizedBox(height: 30),
          Expanded(
            child: ListView.builder(
              itemCount: settingsList.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                SettingsModel model = settingsList[index];

                return ItemListSettings(model: model);
              },
            ),
          ),
        ],
      ),
    );
  }
}
