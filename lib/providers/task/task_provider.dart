import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_riverpodd/data/data.dart';
import 'package:todo_riverpodd/providers/provider.dart';

final taskProvider = StateNotifierProvider<TaskNotifier, TaskState>((ref) {
  final repository = ref.watch(taskRepositoriesProvider);
  return TaskNotifier(repository);
});