import 'package:flutter/material.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

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
          'Subscriptions',
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
            Text('Rs. 3,598 spent this month', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            Text('Current Subscriptions', style: TextStyle(fontSize: 20)),
            ListTile(
              title: Text('Spotify'),
            ),
            ListTile(
              title: Text('YouTube'),
            ),
            ListTile(
              title: Text('Netflix'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('Add Subscription'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Remove Subscription'),
            ),
          ],
        ),
      ),
    );
  }
}
