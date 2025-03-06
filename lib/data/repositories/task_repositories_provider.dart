import 'package:ex_app/data/data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final taskRepositoriesProvider = Provider<TaskRepositories>((ref) {
  final datasource = ref.watch(taskDatasourceProvider);
  return TaskRepositoriesImpl(datasource);
});