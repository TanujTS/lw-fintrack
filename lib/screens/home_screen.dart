import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.cyan,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Today\'s Spending: Rs. 57', style: TextStyle(fontSize: 24)),
            SizedBox(height: 10),
            Text('Bank Balance: Rs. 4,500', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            Text('Recent Transactions', style: TextStyle(fontSize: 20)),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: Text('Transaction 1'),
                    subtitle: Text('Rs. 57'),
                  ),
                  ListTile(
                    title: Text('Transaction 2'),
                    subtitle: Text('Rs. 100'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
