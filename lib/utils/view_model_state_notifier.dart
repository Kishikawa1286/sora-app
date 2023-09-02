import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class ViewModelStateNotifier<T> extends StateNotifier<T> {
  // ignore: use_super_parameters
  ViewModelStateNotifier(T model) : super(model);
}
