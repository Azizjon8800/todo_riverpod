import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_riverpodd/data/data.dart';
import 'package:todo_riverpodd/providers/provider.dart';

class TaskNotifier extends StateNotifier<TaskState> {
  final TaskRepositories _repositories;
  TaskNotifier(this._repositories) : super(const TaskState.initial());

  Future<void> createTask(Task task) async {
    try {
      await _repositories.createTask(task);
      getTasks();
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> updateTask(Task task) async {
    try {
      final isCompleted = !task.isCompleted;
      final updateTask = task.copyWith(isCompleted: isCompleted);
      await _repositories.updateTask(updateTask);
      getTasks();
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> deleteTask(Task task) async {
    try {
      await _repositories.deleteTask(task);
      getTasks();
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void getTasks() async {
    try {
      final tasks = await _repositories.getAllTasks();
      state = state.copyWith(tasks: tasks);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}