import 'package:flutter/material.dart';

class Milestones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Milestones"),
        backgroundColor: Color.fromRGBO(68, 114, 196, 1),
      ),
      body: Container(
        height: 550,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                elevation: 10,
                child: Container(
                  width: 350,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 250,
                        child: Column(
                          children: [
                            Text(
                              "B2 Sertifikası",
                              textScaleFactor: 1.7,
                            ),
                            Text(
                              "23/06/2021",
                              textScaleFactor: 1.3,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        child: Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 45,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green[400],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 2),
              Card(
                elevation: 10,
                child: Container(
                  width: 350,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 250,
                        child: Column(
                          children: [
                            Text(
                              "Approbationsantrag",
                              textScaleFactor: 1.7,
                            ),
                            Text(
                              "14/07/2021",
                              textScaleFactor: 1.3,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        child: Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 45,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green[400],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 2),
              Card(
                elevation: 10,
                child: Container(
                  width: 350,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 250,
                        child: Column(
                          children: [
                            Text(
                              "Eingangsbestatigung",
                              textScaleFactor: 1.7,
                            ),
                            Text(
                              "26/07/2021",
                              textScaleFactor: 1.3,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        child: Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 45,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green[400],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 2),
              Card(
                elevation: 10,
                child: Container(
                  width: 350,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 250,
                        child: Column(
                          children: [
                            Text(
                              "FSP",
                              textScaleFactor: 1.7,
                            ),
                            Text(
                              "15/08/2021",
                              textScaleFactor: 1.3,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        child: Icon(
                          Icons.watch_later_outlined,
                          color: Colors.black87,
                          size: 50,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red[200],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 2),
              Card(
                elevation: 10,
                child: Container(
                  width: 350,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 250,
                        child: Column(
                          children: [
                            Text(
                              "KP/Gutachten",
                              textScaleFactor: 1.7,
                            ),
                            Text(
                              "29/08/2021",
                              textScaleFactor: 1.3,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        child: Icon(
                          Icons.watch_later_outlined,
                          color: Colors.black87,
                          size: 50,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red[200],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 2),
              Card(
                elevation: 10,
                child: Container(
                  width: 350,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 250,
                        child: Column(
                          children: [
                            Text(
                              "Approbation",
                              textScaleFactor: 1.7,
                            ),
                            Text(
                              "14/09/2021",
                              textScaleFactor: 1.3,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        child: Icon(
                          Icons.watch_later_outlined,
                          color: Colors.black87,
                          size: 50,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red[200],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 2),
              Card(
                elevation: 10,
                child: Container(
                  width: 350,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 250,
                        child: Column(
                          children: [
                            Text(
                              "Facharztanerkennurg",
                              textScaleFactor: 1.7,
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "24/09/2021",
                              textScaleFactor: 1.3,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        child: Icon(
                          Icons.watch_later_outlined,
                          color: Colors.black87,
                          size: 50,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red[200],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
