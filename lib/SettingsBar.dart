import 'package:flutter/material.dart';

class SettingsBar extends StatelessWidget {
  Icon ico;
  String title, subtile;
  SettingsBar(
      {required this.ico,
      required this.title,
      required this.subtile,
      super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ico,
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      subtitle: Text(subtile),
    );
  }
}
