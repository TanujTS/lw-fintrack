import 'package:flutter/material.dart';

class CalendarView extends StatelessWidget {
  const CalendarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendar View'),
      ),
      body: Center(
        child: Text('Calendar View Placeholder'),
      ),
    );
  }
}

class SpendingBudgetsView extends StatelessWidget {
  const SpendingBudgetsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spending Budgets View'),
      ),
      body: Center(
        child: Text('Spending Budgets View Placeholder'),
      ),
    );
  }
}

class CardsView extends StatelessWidget {
  const CardsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards View'),
      ),
      body: Center(
        child: Text('Cards View Placeholder'),
      ),
    );
  }
}
