import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/add_expenditure_screen.dart';
import 'screens/subscription_screen.dart';
import 'screens/spending_screen.dart';
import 'screens/rewards_screen.dart';
import 'widgets/bottom_navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expense Tracker',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.cyan,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.teal
        ),
        scaffoldBackgroundColor: Colors.black,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    AddExpenditureScreen(),
    SubscriptionScreen(),
    SpendingScreen(),
    RewardsScreen(),
  ];

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavBar(
        currentIndex: _currentIndex,
        onTap: _onTap,
      ),
    );
  }
}
