import 'dart:io';

import 'package:dech/pages/milestones.dart';
import 'package:dech/pages/missing.dart';
import 'package:dech/pages/scrubs.dart';
import 'package:dech/widgets/mail_sender.dart';
import 'package:dech/widgets/user_card.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Menus extends StatefulWidget {
  @override
  _MenusState createState() => _MenusState();
}

class _MenusState extends State<Menus> {
  _launchURL() async {
    const url = 'https://dech-med.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Route _createRoute(page_name) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page_name,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var tween = Tween(begin: begin, end: end);
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
        backgroundColor: Color.fromRGBO(68, 114, 196, 1),
        elevation: 0,
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  print("basti");
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      title: Text("Konsolosluk randevusu Alınmalı"),
                      content: Text("Did you do this task?"),
                      actions: [
                        FlatButton(
                          onPressed: () {
                            Navigator.pop(context);
                            showDialog(
                              context: context,
                              builder: (_) => AlertDialog(
                                title:
                                    Text("Your Action is sended to our team"),
                                backgroundColor:
                                    Color.fromRGBO(68, 114, 196, 1),
                              ),
                            );
                          },
                          child: Text("Yes"),
                        ),
                        FlatButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("No"),
                        ),
                      ],
                      elevation: 24,
                      backgroundColor: Color.fromRGBO(68, 114, 196, 1),
                    ),
                  );
                },
                child: Icon(
                  Icons.notification_important,
                  size: 26.0,
                ),
              )),
        ]);
    final height = MediaQuery.of(context).size.height;
    final statusBarHeight = MediaQuery.of(context).padding.top;
    final appBarheight = appBar.preferredSize.height;

    return Scaffold(
      appBar: appBar,
      body: Container(
        height: (height - appBarheight - statusBarHeight),
        child: Center(
          child: Column(
            children: [
              UserCard(),
              SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    elevation: 10,
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(_createRoute(Milestones()));
                    },
                    child: Container(
                      width: 100,
                      child: Text(
                        "Milestones",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  RaisedButton(
                    elevation: 10,
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(_createRoute(Missings()));
                    },
                    child: Container(
                      width: 100,
                      child: Text(
                        "Missing Documents",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    elevation: 10,
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(_createRoute(Scrub()));
                    },
                    child: Container(
                      width: 100,
                      child: Text(
                        "Scrumboards",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  RaisedButton(
                    elevation: 10,
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    onPressed: () {
                      _launchURL();
                    },
                    child: Container(
                      width: 100,
                      child: Text(
                        "Website",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
              SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 100,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(_createRoute(EmailSender()));
                    },
                    child: Icon(Icons.message, color: Colors.white),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(20),
                      primary:
                          Color.fromRGBO(68, 114, 196, 1), // <-- Button color
                      onPrimary: Colors.red, // <-- Splash color
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
