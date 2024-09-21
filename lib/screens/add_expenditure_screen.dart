import 'package:flutter/material.dart';

class AddExpenditureScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Expenditure'),
        backgroundColor: Colors.cyan,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
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
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('Add Expenditure'),
            ),
          ],
        ),
      ),
    );
  }
}
