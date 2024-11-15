import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class PieChartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        sections: [
          PieChartSectionData(
            value: 40,
            color: Colors.blue,
            title: 'CO2',
            radius: 50,
          ),
          PieChartSectionData(
            value: 60,
            color: Colors.green,
            title: 'O2',
            radius: 50,
          ),
        ],
      ),
    );
  }
}
