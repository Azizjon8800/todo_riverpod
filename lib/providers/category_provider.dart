import 'package:ex_app/utils/utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

  final categoryProvider = StateProvider.autoDispose<TaskCategories>((ref) {
    return TaskCategories.others;
  });