import 'package:ex_app/data/data.dart';
import 'package:ex_app/providers/provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final taskProvider = StateNotifierProvider<TaskNotifier, TaskState>((ref) {
  final repository = ref.watch(taskRepositoriesProvider);
  return TaskNotifier(repository);
});