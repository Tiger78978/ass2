import 'package:flutter/material.dart';
import 'package:flutter4/data/data_source.dart';
import 'package:flutter4/views/widgets/task_widget.dart';

class AllTasksScreen extends StatelessWidget {
  Function fun;
  AllTasksScreen(this.fun, {super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: DataSource.tasks.length,
        itemBuilder: (context, index) {
          return TaskWidget(DataSource.tasks[index], fun);
        });
  }
}
