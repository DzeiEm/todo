import 'package:flutter/material.dart';
import 'package:todo/model/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
// taip nuskaitom data kuri bus atvaizduota screen'e
  List<Task> _tasks = [
    Task(taskName: 'neew',isDone: false)
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

//  su get mes pasiimam tasku skaiciu.
  int get taskCount {
    return _tasks.length;
  }

//  pridedam nauja task'a
  void addTask(String newTaskTitle) {
    final task = Task(taskName: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

//  update'inam task lista
  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

//  istrinam task
  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
