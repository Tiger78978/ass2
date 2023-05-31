import 'package:flutter/material.dart';
import 'package:flutter4/models/task.dart';

class TaskWidget extends StatelessWidget {
  Task task;
  Function function;

  TaskWidget(this.task, this.function, {super.key});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: task.isComplete,
      onChanged: (v) {
        task.isComplete = !task.isComplete;

        function();
      },
      title: Text(task.name),
    );
  }
}
