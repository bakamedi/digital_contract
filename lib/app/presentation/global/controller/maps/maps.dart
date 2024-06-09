// ignore_for_file: constant_identifier_names

import 'dart:async';

import 'package:flutter_meedu/notifiers.dart';
import 'package:flutter_meedu/providers.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'maps_state.dart';

const double ZOOM = 13;

final mapsGlobalProvider = Provider.state<MapsGlobalController, MapsState>(
  (_) => MapsGlobalController(MapsState.initialState),
);

class MapsGlobalController extends StateNotifier<MapsState> {
  MapsGlobalController(super.initialState) {
    onlyUpdate(
      state = state.copyWith(
        completerController: Completer(),
      ),
    );
  }

  CameraPosition? get initialCameraPosition => state.initialCameraPosition;

  Set<Marker> get makers => state.markers.values.toSet();

  void initCameraPosition(double lat, double lng) {
    onlyUpdate(
      state = state.copyWith(
        completerController: Completer(),
        initialCameraPosition: CameraPosition(
          target: LatLng(lat, lng),
          zoom: ZOOM,
        ),
      ),
    );
  }

  void createMapController(GoogleMapController controller) {
    state = state.copyWith(googleMapController: controller);
    if (!state.completerController!.isCompleted) {
      state.completerController!.complete(
        controller,
      );
    }
  }

  Future<LatLng?> onTap(LatLng? position) async {
    const markerId = MarkerId(
      '1',
    );
    final marker = Marker(
      markerId: markerId,
      position: position!,
    );

    onlyUpdate(
      state = state.copyWith(
        markers: {},
      ),
    );

    final cameraPosition = CameraPosition(
      target: position,
      zoom: ZOOM,
    );
    await state.googleMapController!.animateCamera(
      CameraUpdate.newCameraPosition(cameraPosition),
    );

    onlyUpdate(
      state = state.copyWith(
        markers: {markerId: marker},
      ),
    );

    return position;
  }

  @override
  void dispose() {
    state.googleMapController?.dispose();
    super.dispose();
  }
}
