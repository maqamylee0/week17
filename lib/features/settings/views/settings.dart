import 'package:flutter/cupertino.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return const Center(
    child: Text("Edit Settings",style: TextStyle(fontSize: 30),),
    );
  }
}
