import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:whatsapp/calls_screen.dart';
import 'package:whatsapp/chats_screen.dart';
import 'package:whatsapp/communities_screen.dart';
import 'package:whatsapp/settings_screen.dart';
import 'package:whatsapp/status_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  Widget selectedWidget = ChatsScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: selectedWidget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          selectedIndex = value;
          switch (selectedIndex) {
            case 0:
              selectedWidget = ChatsScreen();
              break;
            case 1:
              selectedWidget = StatusScreen();
              break;
            case 2:
              selectedWidget = CallsScreen();
              break;
            case 3:
              selectedWidget = CommunitiesScreen();
              break;
            case 4:
              selectedWidget = SettingsScreen();
              break;
          }
          setState(() {});
        },
        selectedItemColor: Colors.black,
        unselectedItemColor : Colors.grey,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: AppLocalizations.of(context)!.chats,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle),
            label: AppLocalizations.of(context)!.status,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: AppLocalizations.of(context)!.calls,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: AppLocalizations.of(context)!.communities,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: AppLocalizations.of(context)!.settings,
          ),
        ],
      ),
    );
  }
}
