import 'package:appscare/widgets/controllers/size_config.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MainListViewTwo extends StatefulWidget {
  const MainListViewTwo({super.key});

  @override
  State<MainListViewTwo> createState() => _MainListViewTwoState();
}

class _MainListViewTwoState extends State<MainListViewTwo> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(SizeConfig.width(20)),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("This Week", style: TextStyle(fontSize: 18)),
            SizedBox(width: 4),
            Text("+12%"),
          ],
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05))]),
          height: SizeConfig.height(180),
          child: LineChart(LineChartData(
              borderData: FlBorderData(show: false),
              gridData: FlGridData(show: false),
              titlesData: FlTitlesData(show: false),
              minX: 0,
              maxX: 6,
              minY: 0,
              maxY: 10,
              lineBarsData: [
                LineChartBarData(
                  spots: [
                    FlSpot(0, 4),
                    FlSpot(1, 6),
                    FlSpot(2, 5),
                    FlSpot(3, 7),
                    FlSpot(4, 6),
                    FlSpot(5, 8),
                    FlSpot(6, 9),
                  ],
                  isCurved: true,
                  barWidth: SizeConfig.height(4),
                  dotData: FlDotData(show: true),
                  color: Colors.green,
                  belowBarData: BarAreaData(show: true),
                ),
              ])),
        ),
        Gap.v(10),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Mon"),
            Text("Tue"),
            Text("Wed"),
            Text("Thu"),
            Text("Fri"),
            Text("Sat"),
            Text("Sun"),
          ],
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("😊 ", style: TextStyle(fontSize: 18)),
            SizedBox(width: 4),
            Text("Entries"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Average Mood: Good"),
            Text("7 days"),
          ],
        ),
        // --- //
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("This Month", style: TextStyle(fontSize: 18)),
            SizedBox(width: 4),
            Text("+12%"),
          ],
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05))]),
          height: SizeConfig.height(180),
          child: LineChart(LineChartData(
              borderData: FlBorderData(show: false),
              gridData: FlGridData(show: false),
              titlesData: FlTitlesData(show: false),
              minX: 0,
              maxX: 6,
              minY: 0,
              maxY: 10,
              lineBarsData: [
                LineChartBarData(
                  spots: [
                    FlSpot(0, 4),
                    FlSpot(1, 6),
                    FlSpot(2, 5),
                    FlSpot(3, 7),
                    FlSpot(4, 6),
                    FlSpot(5, 8),
                    FlSpot(6, 9),
                  ],
                  isCurved: true,
                  barWidth: SizeConfig.height(4),
                  dotData: FlDotData(show: true),
                  color: Colors.green,
                  belowBarData: BarAreaData(show: true),
                ),
              ])),
        ),
        Gap.v(10),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Week 1"),
            Text("Week 2"),
            Text("Week 3"),
            Text("Week 4"),
          ],
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("😊 ", style: TextStyle(fontSize: 18)),
            SizedBox(width: 4),
            Text("Entries"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Average Mood: Good"),
            Text("1 Month"),
          ],
        )
      ],
    );
  }
}
