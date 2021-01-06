import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:tecmetra_cliente/models/goals_chart.dart';
import 'package:tecmetra_cliente/pages/goals/widgets/goals_alert_dialog.dart';
import 'package:tecmetra_cliente/utils/default_gradient.dart';
import 'package:tecmetra_cliente/widgets/container-fade/index.dart';

class GoalsPage extends StatefulWidget {
  GoalsPage({Key key}) : super(key: key);

  @override
  _GoalsPageState createState() => _GoalsPageState();
}

class _GoalsPageState extends State<GoalsPage> {
  List<IGoalsChart> data = [
    IGoalsChart(new DateTime(2020, 9, 25), 220),
    IGoalsChart(new DateTime(2020, 8, 25), 340),
    IGoalsChart(new DateTime(2020, 7, 25), 120),
    IGoalsChart(new DateTime(2020, 6, 25), 220),
    IGoalsChart(new DateTime(2020, 6, 25), 530),
    IGoalsChart(new DateTime(2020, 6, 25), 530),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ContainerFade(
              height: 150,
              child: SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlatButton.icon(
                      onPressed: () => Navigator.pushNamedAndRemoveUntil(
                          context, '/dashboard', (route) => false),
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 28,
                      ),
                      label: Text(
                        "Metas",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        right: 15,
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 28,
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 140,
                        child: Text(
                          "Meta Rescente",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Container(
                        child: Text(
                          "24.584m³",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_upward,
                                    size: 28,
                                    color: Colors.green,
                                  ),
                                  onPressed: () {},
                                ),
                                Text(
                                  "12.258 m³",
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 18,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_downward,
                                    color: Colors.red,
                                    size: 28,
                                  ),
                                  onPressed: () {},
                                ),
                                Text(
                                  "12.258 m³",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 18,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              child: SfCartesianChart(
                primaryXAxis: NumericAxis(
                    // crossesAt: DateTime(2018, 4, 1),
                    ),
                series: <ChartSeries>[
                  HistogramSeries<IGoalsChart, double>(
                    dataSource: data,
                    yValueMapper: (IGoalsChart sales, i) => sales.consume,
                    binInterval: 20,
                    showNormalDistributionCurve: true,
                    curveColor: Colors.green,
                    borderWidth: 3,
                    gradient: defaultGradient(),
                    curveWidth: 5,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 10,
              ),
              child: Row(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: defaultGradient(),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 5,
                          ),
                          child: Text(
                            "Consumo",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 10,
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 5,
                          ),
                          child: Text(
                            "Metas",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle, // circular shape
            gradient: defaultGradient(),
          ),
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        onPressed: () => showDialog(
          context: context,
          builder: (context) => AddGoalAlertDialog(),
        ),
      ),
    );
  }
}
