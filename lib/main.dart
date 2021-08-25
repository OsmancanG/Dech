import 'package:dech/pages/auth.dart';
import 'package:dech/pages/menus.dart';
import 'package:dech/pages/milestones.dart';
import 'package:dech/pages/missing.dart';
import 'package:dech/pages/scrubs.dart';
import 'package:dech/widgets/mail_sender.dart';
import 'package:dech/widgets/user_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dech Med App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Auth(),
            ],
          ),
        ],
      ),
    );
  }
}
