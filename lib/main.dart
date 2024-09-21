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
  const MyApp({super.key});

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
        scaffoldBackgroundColor: const Color.fromARGB(255, 63, 63, 63),
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const AddExpenditureScreen(),
    const SubscriptionScreen(),
    const SpendingScreen(),
    const RewardsScreen(),
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
