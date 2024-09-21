import 'package:flutter/material.dart';
import 'package:fintrack/models/color_theme.dart';
import 'package:fl_chart/fl_chart.dart';

class SpendingScreen extends StatelessWidget {
  const SpendingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(60),
          ),
        ),
        elevation: 10,
        toolbarHeight: 70,
        centerTitle: true,
        title: const Text(
          'Spending Analysis',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold,
            fontSize: 35,
            color: ColorTheme.primaryColor,
          ),
        ),
        backgroundColor: ColorTheme.secondaryBgColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Total Expenditure',
                style: TextStyle(fontSize: 24, color: ColorTheme.primaryColor)),
            const SizedBox(height: 20),
            const Text('Category Wise Expenditure',
                style: TextStyle(fontSize: 20, color: ColorTheme.primaryColor)),
            const SizedBox(height: 20),
            // Placeholder for circular chart
            Flexible(
              child: PieChart(
                PieChartData(
                  sections: [
                    PieChartSectionData(
                      color: Colors.green,
                      value: 20,
                      title: '20%',
                      radius: 50,
                      titleStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: ColorTheme.primaryColor),
                    ),
                    PieChartSectionData(
                      color: Colors.blue,
                      value: 30,
                      title: '30%',
                      radius: 50,
                      titleStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: ColorTheme.primaryColor),
                    ),
                    PieChartSectionData(
                      color: Colors.red,
                      value: 10,
                      title: '10%',
                      radius: 50,
                      titleStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: ColorTheme.primaryColor),
                    ),
                  ],
                  sectionsSpace: 4,
                  centerSpaceRadius: 40,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Legend
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                LegendItem(color: Colors.green, text: 'Entertainment'),
                LegendItem(color: Colors.blue, text: 'Transport'),
                LegendItem(color: Colors.red, text: 'Shopping'),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: ColorTheme.primaryBgColor,
    );
  }
}

class LegendItem extends StatelessWidget {
  final Color color;
  final String text;

  const LegendItem({required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 16,
          height: 16,
          color: color,
        ),
        const SizedBox(width: 8),
        Text(text, style: const TextStyle(color: ColorTheme.primaryColor)),
      ],
    );
  }
}
