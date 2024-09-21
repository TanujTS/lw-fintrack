import 'package:flutter/material.dart';

class SpendingScreen extends StatelessWidget {
  const SpendingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(60),
          ),
          
        ),
        elevation: 10,
        toolbarHeight: 100,
        centerTitle: true,
        title: Text(
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
            Text('Today\'s Expenditure: Rs. 45', style: TextStyle(fontSize: 24)),
            SizedBox(height: 10),
            Text('Weekly Expenditure: Rs. 500', style: TextStyle(fontSize: 24)),
            SizedBox(height: 10),
            Text('Monthly Expenditure: Rs. 3,500', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            Text('Category Wise Expenditure', style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            // Placeholder for circular chart
            Container(
              height: 150,
              width: 150,
              color: Colors.grey[700],
              child: Center(child: Text('Pie Chart Placeholder')),
            ),
          ],
        ),
      ),
    );
  }
}
