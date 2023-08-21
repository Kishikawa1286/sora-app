import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/pages/home/model.dart';

final homeViewModelProvider =
    StateNotifierProviderFamily<HomeViewModel, HomeModel, int>(
  (ref, currentTab) => HomeViewModel(currentTab),
);

class HomeViewModel extends StateNotifier<HomeModel> {
  HomeViewModel(int currentTab) : super(HomeModel(currentTab: currentTab));

  void updateCurrentTab(int index) {
    state = state.copyWith(currentTab: index);
  }
}
