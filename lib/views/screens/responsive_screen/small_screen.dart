import 'package:flutter/material.dart';
import 'package:flutter4/views/screens/all_tasks_screen.dart';
import 'package:flutter4/views/screens/complete_tasks.dart';
import 'package:flutter4/views/screens/incomplete_tasks.dart';

class SmallScreen extends StatefulWidget {
  SmallScreen();

  @override
  State<SmallScreen> createState() => _MainTasksScreenState();
}

class _MainTasksScreenState extends State<SmallScreen> {
  PageController pageController = PageController();

  int pageIndex = 0;
  updateScreen() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: pageIndex,
          onTap: (a) {
            pageIndex = a;
            pageController.jumpToPage(a);
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: "All Tasks"),
            BottomNavigationBarItem(
                icon: Icon(Icons.done), label: "Complete Tasks"),
            BottomNavigationBarItem(
                icon: Icon(Icons.cancel), label: "InComplete Tasks"),
          ]),
      appBar: AppBar(
        title: const Text("Todo App"),
      ),
      body: PageView(
        controller: pageController,
        children: [
          AllTasksScreen(updateScreen),
          CompleteTasksScreen(updateScreen),
          InCompleteTasksScreen(updateScreen)
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              onTap: () {
                pageIndex = 0;
                pageController.jumpToPage(0);
                Navigator.of(context).pop();
                setState(() {});
              },
              title: const Text('Show All Tasks'),
            ),
            ListTile(
              onTap: () {
                pageIndex = 1;
                pageController.jumpToPage(1);
                Navigator.of(context).pop();
                setState(() {});
              },
              title: const Text('Show Complete Tasks'),
            ),
            ListTile(
              onTap: () {
                pageIndex = 2;
                pageController.jumpToPage(2);
                Navigator.of(context).pop();
                setState(() {});
              },
              title: const Text('Show InComplete Tasks'),
            )
          ],
        ),
      ),
    );
  }
}
