import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';


import 'Bardata.dart';

class MyBarGraph extends StatelessWidget {
  final List monthlySummary;
  const MyBarGraph({super.key, required this.monthlySummary});

  @override
  Widget build(BuildContext context) {
    BarData myBarData = BarData(
      januaryAmmount: monthlySummary[0],
      FebuaryAmmount: monthlySummary[1],
      MarchAmmount: monthlySummary[2],
      AprilAmmount: monthlySummary[3],
      MayAmmount: monthlySummary[4],
      JuneAmmount: monthlySummary[5],
      JulayAmmount: monthlySummary[6],
      AugustAmmount: monthlySummary[7],
      SeptemerAmmount: monthlySummary[8],
      OctoberAmmount: monthlySummary[9],
      NovemberAmmount: monthlySummary[10],
      DecemberAmmount: monthlySummary[11],
    );
    myBarData.initializedBarData();
    return BarChart(BarChartData(
      maxY: 100,
      minY: 0,
      gridData: FlGridData(show: false),
      borderData: FlBorderData(show: false),
      barGroups: myBarData.bardata
          .map((data) => BarChartGroupData(
                x: data.x,
                barRods: [BarChartRodData(toY: data.y, color: Colors.green)],
              ))
          .toList(),
    ));
  }
}
