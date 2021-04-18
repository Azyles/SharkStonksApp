import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class DashboardView extends StatefulWidget {
  @override
  _DashboardViewState createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  int touchedIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Text(
              "Dashboard",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.w300),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Text(
              "Get Investing",
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 20,
                  fontWeight: FontWeight.w300),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
          ),
          Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Center(
                  child: Container(
                    height: 300,
                    width: 300,
                    child: Image.network("https://i.imgur.com/aNxzRbS.png"),
                  ),
                ),
                Center(
                  child: Container(
                    height: 200,
                    width: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "1.69k",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "+12%",
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 17,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.black, shape: BoxShape.circle),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: ListView(
                shrinkWrap: true,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "up 20%",
                            style: TextStyle(
                                color: Colors.grey[500],
                                fontSize: 13,
                                fontWeight: FontWeight.w300),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "SmartAlgo3",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Spacer(),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            child: PieChart(
                              PieChartData(
                                  borderData: FlBorderData(
                                    show: false,
                                  ),
                                  sectionsSpace: 0,
                                  centerSpaceRadius: 32,
                                  sections: showingSections()),
                            ),
                          ),
                          Text(
                            "35",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    color: Colors.grey[900],
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "up 20%",
                            style: TextStyle(
                                color: Colors.grey[500],
                                fontSize: 13,
                                fontWeight: FontWeight.w300),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "SmartAlgo3",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Spacer(),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            child: PieChart(
                              PieChartData(
                                  borderData: FlBorderData(
                                    show: false,
                                  ),
                                  sectionsSpace: 0,
                                  centerSpaceRadius: 32,
                                  sections: showingSections()),
                            ),
                          ),
                          Text(
                            "25",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    color: Colors.grey[900],
                    thickness: 2,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(2, (i) {
      final isTouched = i == touchedIndex;
      final double radius = isTouched ? 3 : 3;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: Colors.grey[900],
            value: 40,
            showTitle: false,
            radius: radius,
          );
        case 1:
          return PieChartSectionData(
            color: Colors.redAccent[200],
            value: 30,
            showTitle: false,
            radius: radius,
          );

        default:
          return null;
      }
    });
  }
}
