// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class MyBarchart extends StatefulWidget {
  const MyBarchart({Key? key}) : super(key: key);

  @override
  State<MyBarchart> createState() => _MyBarchartState();
}

class _MyBarchartState extends State<MyBarchart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Histogram chart',
            style: TextStyle(fontSize: 21.0, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.greenAccent,
        ),
        body: SfCartesianChart(
          primaryXAxis: CategoryAxis(),
          primaryYAxis:
              CategoryAxis(title: AxisTitle(text: "Sales in Millions")),
          legend: Legend(isVisible: true),
          series: <ChartSeries>[
            ColumnSeries<SalesData, String>(
              name: 'Cars',
              dataSource: getColumnData(),
              xValueMapper: (SalesData sales, _) => sales.x,
              yValueMapper: (SalesData sales, _) => sales.y,
              dataLabelSettings: DataLabelSettings(
                isVisible: true,
              ),
            )
          ],
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
    );
  }
}

class SalesData {
  SalesData(this.x, this.y);
  String x;
  double y;
}

dynamic getColumnData() {
  List<SalesData> columnData = <SalesData>[
    SalesData('Audi', 100),
    SalesData('BMW', 80),
    SalesData('Honda', 90),
    SalesData('Ferra', 70),
    SalesData('Alto', 30),
    SalesData('Duster', 20),
  ];
  return columnData;
}
