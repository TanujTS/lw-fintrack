import 'package:flutter/material.dart';

class AddExpenditureScreen extends StatelessWidget {
  const AddExpenditureScreen({super.key});

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
          'Add Expenditure',
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
            const Opacity(
              opacity: 0.5,
              child: Column(
              children: [
                TextField(
                decoration: InputDecoration(labelText: 'Cost'),
                ),
                TextField(
                decoration: InputDecoration(labelText: 'Item'),
                ),
                TextField(
                decoration: InputDecoration(labelText: 'Description'),
                ),
                TextField(
                decoration: InputDecoration(labelText: 'Category'),
                ),
              ],
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Add Expenditure'),
            ),
          ],
        ),
      ),
    );
  }
}
