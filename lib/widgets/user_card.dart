import 'dart:ffi';

import 'package:dech/Doctors.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  var osman = Doctor(
      name: "Umut Blackfountain",
      isyeri: "Özel Acibadem Hastanesi, Istanbul",
      unvan: "Hacettepe Üniversitesi Tip Fakültesi 2010",
      uzman: "Ege Üniversitesi Cocuk Sagligi ve Hastaliklari 2015");

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        color: Color.fromRGBO(68, 114, 196, 1),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 150,
              width: 150,
              child: Icon(
                Icons.account_box,
                size: 100,
                color: Color.fromRGBO(68, 114, 196, 1),
              ),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white
                      //image: DecorationImage(
                      // image: AssetImage('assests/images/dech.png'),
                      //),
                      ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              osman.name,
              textScaleFactor: 1.5,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: 300,
              child: Text(
                osman.isyeri,
                textScaleFactor: 1.4,
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: 300,
              child: Text(
                osman.uzman,
                textScaleFactor: 1.2,
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: 300,
              child: Text(
                osman.unvan,
                textScaleFactor: 1.1,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
