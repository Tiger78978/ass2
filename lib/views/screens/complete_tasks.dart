import 'package:flutter/material.dart';
import 'package:flutter4/data/data_source.dart';
import 'package:flutter4/views/widgets/task_widget.dart';

class CompleteTasksScreen extends StatelessWidget {
  Function fun;
  CompleteTasksScreen(this.fun, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount:
            DataSource.tasks.where((element) => element.isComplete).length,
        itemBuilder: (context, index) {
          return TaskWidget(
              DataSource.tasks
                  .where((element) => element.isComplete)
                  .toList()[index],
              fun);
        });
  }
}
