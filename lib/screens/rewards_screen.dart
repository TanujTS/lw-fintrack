import 'package:flutter/material.dart';
import 'package:fintrack/models/color_theme.dart';

class RewardsScreen extends StatelessWidget {
  const RewardsScreen({super.key});

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
          'Rewards',
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
          children: [
            const Text('Available Rewards', style: TextStyle(fontSize: 24)),
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
