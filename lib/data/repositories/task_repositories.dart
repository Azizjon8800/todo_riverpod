  import 'package:ex_app/data/data.dart';

abstract class TaskRepositories {
    Future<void> createTask(Task task);
    Future<void> updateTask(Task task);
    Future<void> deleteTask(Task task);
    Future<List<Task>> getAllTasks();
  }