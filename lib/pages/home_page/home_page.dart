import 'package:flutter/material.dart';
import 'package:fintrack/colorscheme/color_extensions.dart';
import 'package:fintrack/components/status.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isSubscription = true;
  List subArr = [
    {"name": "Spotify", "price": "59"},
    {"name": "YouTube Premium", "price": "189"},
    {"name": "NetFlix", "price": "799"}
  ];

  List bilArr = [
    {"name": "Spotify", "date": DateTime(2023, 07, 25), "price": "59"},
    {
      "name": "YouTube Premium",
      "date": DateTime(2023, 07, 25),
      "price": "18.99"
    },
    {"name": "NetFlix", "date": DateTime(2023, 07, 25), "price": "799"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: ListView.builder(
        itemCount: subArr.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              width: 40,
              height: 40,
              color: Colors.grey, // Blank box
            ),
            title: Text(subArr[index]['name']),
            subtitle: Text('\$${subArr[index]['price']}'),
          );
        },
      ),
    );
  }
}
