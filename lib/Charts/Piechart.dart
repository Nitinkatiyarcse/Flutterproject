// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class MyChartPage extends StatefulWidget {
  const MyChartPage({Key? key}) : super(key: key);

  @override
  State<MyChartPage> createState() => _MyChartPageState();
}

class _MyChartPageState extends State<MyChartPage> {
  late List<GDPData> _chartData;
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
                'Pie Chart',
                style: TextStyle(fontSize: 21.0, fontWeight: FontWeight.bold),
              ),
              backgroundColor: Colors.greenAccent,
            ),
            body: SfCircularChart(
              tooltipBehavior: _tooltipBehavior,
              legend: Legend(
                  isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
              series: <CircularSeries>[
                PieSeries<GDPData, String>(
                    name: 'GDPData',
                    dataSource: _chartData,
                    xValueMapper: (GDPData data, _) => data.continent,
                    yValueMapper: (GDPData data, _) => data.gdp,
                    dataLabelSettings: const DataLabelSettings(isVisible: true),
                    enableTooltip: true)
              ],
            ),
            backgroundColor: const Color.fromARGB(255, 235, 233, 233)));
  }

  List<GDPData> getChartData() {
    final List<GDPData> chartData = [
      GDPData('India', 500000),
      GDPData('Oce', 450000),
      GDPData('Afr', 400000),
      GDPData('S Amr', 350000),
      GDPData('Erp', 300000),
      GDPData('N Amr', 250000),
      GDPData('Asia', 200000),
      GDPData('china', 150000),
    ];
    return chartData;
  }
}

class GDPData {
  GDPData(this.continent, this.gdp);
  final String continent;
  final int gdp;
}
