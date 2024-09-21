import 'package:flutter/material.dart';
import 'package:fintrack/models/color_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
          'Home Page',
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
            const Text('Today\'s Spending: Rs. 57',
                style: TextStyle(fontSize: 24, color: ColorTheme.primaryColor)),
            const SizedBox(height: 10),
            const Text('Bank Balance: Rs. 4,500',
                style: TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            const Text('Recent Transactions',
                style: TextStyle(fontSize: 20, color: ColorTheme.primaryColor)),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5.0,
                          spreadRadius: 1.0,
                        ),
                      ],
                    ),
                    child: ListTile(
                      title: Text('Transaction 1'),
                      subtitle: Text('Rs. 57'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5.0,
                          spreadRadius: 1.0,
                        ),
                      ],
                    ),
                    child: ListTile(
                      title: Text('Transaction 2'),
                      subtitle: Text('Rs. 100'),
                    ),
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
