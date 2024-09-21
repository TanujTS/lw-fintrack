import 'package:flutter/material.dart';

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
        toolbarHeight: 100,
        centerTitle: true,
        title: const Text(
          'Spending',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text('Today\'s Expenditure: Rs. 45',
                style: TextStyle(fontSize: 24)),
            const SizedBox(height: 10),
            const Text('Weekly Expenditure: Rs. 500',
                style: TextStyle(fontSize: 24)),
            const SizedBox(height: 10),
            const Text('Monthly Expenditure: Rs. 3,500',
                style: TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            const Text('Category Wise Expenditure',
                style: TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            // Placeholder for circular chart
            Container(
              height: 200,
              width: 200,
              child: const Center(
                child: Text('Pie Chart Data'),
              ),
              decoration: BoxDecoration(
                color: Colors.cyan,
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
