import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Scrub extends StatelessWidget {
  currentProgressColor(double progress) {
    if (progress >= 0.5 && progress <= 0.8) {
      return Colors.orange;
    }
    if (progress > 0.8) {
      return Colors.green;
    } else {
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scrumboards"),
        backgroundColor: Color.fromRGBO(68, 114, 196, 1),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            Card(
              elevation: 10,
              child: Container(
                width: 350,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Translation",
                          textScaleFactor: 1.7,
                        ),
                        Text(
                          "Due Date: 29/06/2021",
                          textScaleFactor: 1.3,
                        ),
                      ],
                    ),
                    CircularPercentIndicator(
                      radius: 70,
                      percent: 1.0,
                      center: Text(
                        "100%",
                        textScaleFactor: 1.3,
                      ),
                      progressColor: currentProgressColor(1),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Card(
              elevation: 10,
              child: Container(
                width: 350,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Gutachten",
                          textScaleFactor: 1.7,
                        ),
                        Text(
                          "Due Date:19/07/2021",
                          textScaleFactor: 1.3,
                        ),
                      ],
                    ),
                    CircularPercentIndicator(
                      radius: 70,
                      percent: 0.8,
                      center: Text(
                        "80%",
                        textScaleFactor: 1.3,
                      ),
                      progressColor: currentProgressColor(0.8),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Card(
              elevation: 10,
              child: Container(
                width: 350,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Application",
                          textScaleFactor: 1.7,
                        ),
                        Text(
                          "Due Date: 02/08/2021",
                          textScaleFactor: 1.3,
                        ),
                      ],
                    ),
                    CircularPercentIndicator(
                      radius: 70,
                      percent: 0.09,
                      center: Text(
                        "9%",
                        textScaleFactor: 1.3,
                      ),
                      progressColor: currentProgressColor(0.09),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Card(
              elevation: 10,
              child: Container(
                width: 350,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Approbation",
                          textScaleFactor: 1.7,
                        ),
                        Text(
                          "Due Date: 28/08/2021",
                          textScaleFactor: 1.3,
                        ),
                      ],
                    ),
                    CircularPercentIndicator(
                      radius: 70,
                      percent: 0.0,
                      center: Text(
                        "0%",
                        textScaleFactor: 1.3,
                      ),
                      progressColor: currentProgressColor(0),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
