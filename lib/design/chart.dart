import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class CurvedLineChart extends StatefulWidget {
  const CurvedLineChart({Key? key}) : super(key: key);

  @override
  State<CurvedLineChart> createState() => _CurvedLineChartState();
}

class _CurvedLineChartState extends State<CurvedLineChart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Colors.red[200],
        padding: EdgeInsets.only(left: 10,right: 2,top: 200,bottom: 12),
        height: 600,
        width: MediaQuery.of(context).size.width - 4,
        child: Expanded(
          child: LineChart(LineChartData(gridData: FlGridData(show: true),
              borderData: FlBorderData(show: true),
              lineBarsData: [
                LineChartBarData(
                  spots: [
                   FlSpot(0, 1),
                    FlSpot(1, 3),
                    FlSpot(2, 10),
                    FlSpot(3, 7),
                    FlSpot(4, 12),
                    FlSpot(5, 13),
                    // FlSpot(6, 17),
                    // FlSpot(7, 15),
                    // FlSpot(8, 20)
                  ],isCurved: true,

                  // colors: [
                  //   Colors.greenAccent,Colors.red,Colors.yellow,
                  // ],
                )
              ]
          ),),
        ),
      ),
    );
  }
}