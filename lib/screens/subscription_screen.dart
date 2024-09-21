import 'package:flutter/material.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

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
            const Text('Rs. 3,598 spent this month', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            const Text('Current Subscriptions', style: TextStyle(fontSize: 20)),
            const ListTile(
              title: Text('Spotify'),
            ),
            const ListTile(
              title: Text('YouTube'),
            ),
            const ListTile(
              title: Text('Netflix'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Add Subscription'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Remove Subscription'),
            ),
          ],
        ),
      ),
    );
  }
}
