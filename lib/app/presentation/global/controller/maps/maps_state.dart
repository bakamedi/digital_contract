import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'maps_state.freezed.dart';

@freezed
class MapsState with _$MapsState {
  const MapsState._();
  const factory MapsState({
    @Default({}) Map<MarkerId, Marker> markers,
    Completer<GoogleMapController>? completerController,
    GoogleMapController? googleMapController,
    CameraPosition? initialCameraPosition,
  }) = _MapsState;
  static MapsState get initialState => MapsState(
        completerController: Completer(),
      );
}
