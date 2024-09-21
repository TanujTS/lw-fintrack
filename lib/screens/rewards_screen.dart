import 'package:flutter/material.dart';

class RewardsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rewards'),
        backgroundColor: Colors.cyan,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Rewards', style: TextStyle(fontSize: 24)),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: Text('Reward 1'),
                    subtitle: Text('Rs. 100 discount'),
                  ),
                  ListTile(
                    title: Text('Reward 2'),
                    subtitle: Text('Rs. 200 cashback'),
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
