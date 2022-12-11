import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'features/home/views/home.dart';
import 'features/profile/views/profile.dart';
import 'features/settings/views/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Week 17 '),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body:IndexedStack(
        index: _currentIndex,
        children: const [
          Home(),
          Profile(),
          Settings(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index){
          setState(()=>_currentIndex = index);
        },
        items:  const [
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.house),
              label: "Home"
          ),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.person),
              label: "Profile"
          ),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.cog),
              label: "Settings"
          )
        ],
      ),
  // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
