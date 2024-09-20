import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fintrack/colorscheme/color_extensions.dart'; //ColorScheme
import '../home_page/home_page.dart'; //Home Page
import 'placeholder_views.dart'; // Import placeholder views

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  int selectTab = 0;
  PageStorageBucket pageStorageBucket = PageStorageBucket();
  Widget currentTabView = const HomeView();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColor.gray,
      body: Stack(children: [
        PageStorage(bucket: pageStorageBucket, child: currentTabView),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectTab,
        onTap: (index) {
          setState(() {
            selectTab = index;
            switch (index) {
              case 0:
                currentTabView = const HomeView();
                break;
              case 1:
                currentTabView = const CalendarView();
                break;
              case 2:
                currentTabView = const SpendingBudgetsView();
                break;
              case 3:
                currentTabView = const CardsView();
                break;
            }
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Container(
              width: 24,
              height: 24,
              color: Colors.grey, // Blank box
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 24,
              height: 24,
              color: Colors.grey, // Blank box
            ),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 24,
              height: 24,
              color: Colors.grey, // Blank box
            ),
            label: 'Budgets',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 24,
              height: 24,
              color: Colors.grey, // Blank box
            ),
            label: 'Cards',
          ),
        ],
      ),
    );
  }
}
