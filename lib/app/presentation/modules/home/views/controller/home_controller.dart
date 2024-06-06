import 'package:flutter_meedu/notifiers.dart'; // import the StateNotifer class
import 'package:flutter_meedu/providers.dart';

import 'home_state.dart';

final homeProvider = Provider.state<HomeController, HomeState>(
  (_) => HomeController(),
);

class HomeController extends StateNotifier<HomeState> {
  HomeController() : super(HomeState.initialState);

  void changePageIndex(int currentPageIndex) {
    onlyUpdate(
      state = state.copyWith(
        currentPageIndex: currentPageIndex,
      ),
    );
  }

  int getCurrentPageIndex() {
    return state.currentPageIndex;
  }
}
