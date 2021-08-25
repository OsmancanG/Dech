import 'package:flutter/material.dart';

class Missings extends StatefulWidget {
  @override
  _MissingsState createState() => _MissingsState();
}

class _MissingsState extends State<Missings> {
  final List<String> missing = <String>[
    'Geburtsurkunde',
    'Asistan Karnesi',
    'Telc B2 Sertifikası',
    'PhD Diploması'
  ];
  List<bool> _checkBox = <bool>[false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Missing Documents"),
        backgroundColor: Color.fromRGBO(68, 114, 196, 1),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: missing.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 200,
                    child: Text(
                      missing[index],
                      textScaleFactor: 1.5,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Checkbox(
                      value: _checkBox[index],
                      onChanged: (bool value) {
                        setState(() {
                          this._checkBox[index] = value;
                        });
                      })
                ],
              ),
            );
          }),
    );
  }
}
