import 'package:flutter/material.dart';

class RewardsScreen extends StatelessWidget {
  const RewardsScreen({super.key});

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
          'Rewards',
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
            Text('Rewards', style: TextStyle(fontSize: 24)),
            Expanded(
              child: ListView(
                children: const [
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
