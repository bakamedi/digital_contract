import 'package:freezed_annotation/freezed_annotation.dart';

part 'bill_state.freezed.dart';

@freezed
class BillState with _$BillState {
  const BillState._();
  const factory BillState({
    @Default('') name,
  }) = _BillState;
  static BillState get initialState => const BillState();
}
