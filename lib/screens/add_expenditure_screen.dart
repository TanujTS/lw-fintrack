import 'package:flutter/material.dart';
import 'package:fintrack/models/color_theme.dart';

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
        toolbarHeight: 70,
        centerTitle: true,
        title: const Text(
          'Expenditure',
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
            Opacity(
              opacity: 0.5,
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Cost',
                      labelStyle: TextStyle(color: Colors.grey[700]),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[400]!),
                      ),
                    ),
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Item',
                      labelStyle: TextStyle(color: Colors.grey[700]),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[400]!),
                      ),
                    ),
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Description',
                      labelStyle: TextStyle(color: Colors.grey[700]),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[400]!),
                      ),
                    ),
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Category',
                      labelStyle: TextStyle(color: Colors.grey[700]),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[400]!),
                      ),
                    ),
                    style: TextStyle(color: Colors.black, fontSize: 18),
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
