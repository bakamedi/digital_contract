import 'package:flutter_meedu/notifiers.dart'; // import the StateNotifer class

import 'home_state.dart';

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
