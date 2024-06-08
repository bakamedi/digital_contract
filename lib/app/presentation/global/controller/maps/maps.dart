// ignore_for_file: constant_identifier_names

import 'dart:async';

import 'package:flutter_meedu/notifiers.dart';
import 'package:flutter_meedu/providers.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'maps_state.dart';

const double ZOOM = 13;

final mapsProvider = Provider.state<MapsController, MapsState>(
  (_) => MapsController(MapsState.initialState),
);

class MapsController extends StateNotifier<MapsState> {
  MapsController(super.initialState) {
    onlyUpdate(
      state = state.copyWith(
        completerController: Completer(),
      ),
    );
  }

  CameraPosition? get initialCameraPosition => state.initialCameraPosition;

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
    state = state.copyWith(googleMapcontroller: controller);
    if (!state.completerController!.isCompleted) {
      state.completerController!.complete(
        controller,
      );
    }
  }

  @override
  void dispose() {
    state.googleMapcontroller?.dispose();
    super.dispose();
  }
}
