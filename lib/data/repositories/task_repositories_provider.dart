import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_riverpodd/data/data.dart';

final taskRepositoriesProvider = Provider<TaskRepositories>((ref) {
  final datasource = ref.watch(taskDatasourceProvider);
  return TaskRepositoriesImpl(datasource);
});