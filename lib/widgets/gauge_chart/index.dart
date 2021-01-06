import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:tecmetra_cliente/extensios/hex.dart';

class DashboardGaugeChart extends StatefulWidget {
  final int consumePerMonth;
  final int bottomNumber;
  final double percente;
  DashboardGaugeChart({
    Key key,
    @required this.consumePerMonth,
    @required this.bottomNumber,
    @required this.percente,
  }) : super(key: key);

  @override
  _DashboardGaugeChartState createState() => _DashboardGaugeChartState();
}

class _DashboardGaugeChartState extends State<DashboardGaugeChart> {
  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
      animationDuration: 2500,
      enableLoadingAnimation: true,
      axes: <RadialAxis>[
        RadialAxis(
          minimum: 0,
          maximum: 100,
          ranges: <GaugeRange>[
            GaugeRange(
              startValue: 0,
              endValue: widget.percente,
              gradient: SweepGradient(
                colors: [
                  HexColor.fromHex('#1AC9F4'),
                  HexColor.fromHex('#7D51CD'),
                ],
              ),
              startWidth: 10,
              endWidth: 30,
            ),
          ],
          annotations: <GaugeAnnotation>[
            GaugeAnnotation(
              widget: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.bar_chart,
                      size: 64,
                      color: Colors.blue,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 5,
                      ),
                      child: Text(
                        "Consumo do mês",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 5,
                      ),
                      child: Text(
                        "${widget.consumePerMonth}",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "${widget.bottomNumber}",
                      ),
                    )
                  ],
                ),
              ),
              angle: 90,
              positionFactor: 0,
            )
          ],
          showAxisLine: false,
          showLabels: false,
          axisLabelStyle: GaugeTextStyle(
            color: HexColor.fromHex('#7D51CD'),
          ),
        )
      ],
    );
  }
}
