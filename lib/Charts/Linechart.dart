// ignore_for_file: unused_import, unused_field

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List<SalesData> _chartData;
  late TooltipBehavior _tooltipBehavior;
  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              'Line Chart',
              style: TextStyle(fontSize: 21.0, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.greenAccent,
          ),
          body: SfCartesianChart(
            tooltipBehavior: _tooltipBehavior,
            series: <ChartSeries>[
              LineSeries<SalesData, double>(
                  name: 'Sales',
                  dataSource: _chartData,
                  xValueMapper: (SalesData sales, _) => sales.year,
                  yValueMapper: (SalesData sales, _) => sales.sales,
                  dataLabelSettings: const DataLabelSettings(isVisible: true),
                  enableTooltip: true)
            ],
            primaryXAxis:
                NumericAxis(edgeLabelPlacement: EdgeLabelPlacement.shift),
            primaryYAxis: NumericAxis(
                numberFormat: NumberFormat.simpleCurrency(decimalDigits: 0)),
          ),
          backgroundColor: Color.fromARGB(255, 255, 255, 255)),
    );
  }

  List<SalesData> getChartData() {
    final List<SalesData> chartData = [
      SalesData(2001, 50),
      SalesData(2005, 20),
      SalesData(2009, 30),
      SalesData(2011, 15),
      SalesData(2013, 40),
      SalesData(2015, 10),
      SalesData(2018, 55),
      SalesData(2019, 50),
      SalesData(2022, 20),
      SalesData(2024, 30),
    ];
    return chartData;
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final double year;
  final double sales;
}
