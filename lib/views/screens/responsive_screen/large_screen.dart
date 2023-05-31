import 'package:flutter/material.dart';
import 'package:flutter4/views/screens/all_tasks_screen.dart';
import 'package:flutter4/views/screens/complete_tasks.dart';
import 'package:flutter4/views/screens/incomplete_tasks.dart';

class LargeScreen extends StatefulWidget {
  LargeScreen();

  @override
  State<LargeScreen> createState() => _MainTasksScreenState();
}

class _MainTasksScreenState extends State<LargeScreen> {
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
              updateScreen();
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.list), label: "All Tasks"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.done), label: "Complete Tasks"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.cancel), label: "InComplete Tasks"),
            ]),
        appBar: AppBar(
          title: const Text("Todo App"),
        ),
        body: Row(
          children: [
            Expanded(
                child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    pageIndex = 0;
                    pageController.jumpToPage(0);
                    updateScreen();
                  },
                  child: const Text('Show All Tasks'),
                ),
                ElevatedButton(
                  onPressed: () {
                    pageIndex = 1;
                    pageController.jumpToPage(1);
                    updateScreen();
                  },
                  child: const Text('Show Complete Tasks'),
                ),
                ElevatedButton(
                  onPressed: () {
                    pageIndex = 2;
                    pageController.jumpToPage(2);
                    updateScreen();
                  },
                  child: const Text('Show InComplete Tasks'),
                ),
              ],
            )),
            Expanded(
                child: PageView(
              controller: pageController,
              children: [
                AllTasksScreen(updateScreen),
                CompleteTasksScreen(updateScreen),
                InCompleteTasksScreen(updateScreen)
              ],
            ))
          ],
        ));
  }
}
