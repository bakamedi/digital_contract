import 'package:flutter_meedu/notifiers.dart';

import 'bill_state.dart'; // import the StateNotifer class

class BillController extends StateNotifier<BillState> {
  BillController() : super(BillState.initialState);

  void changePageIndex(int currentPageIndex) {}
}
