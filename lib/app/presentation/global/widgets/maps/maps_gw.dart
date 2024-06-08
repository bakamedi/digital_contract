import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_meedu/consumer.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../core/responsive/responsive.dart';
import '../../controller/maps/maps.dart';

class MapsGW extends StatelessWidget {
  final void Function(LatLng)? onTapLatLng;
  const MapsGW({
    super.key,
    this.onTapLatLng,
  });

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive(context);

    return Consumer(
      builder: (_, ref, __) {
        final mapsController = ref.watch(mapsProvider);
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          width: responsive.width,
          height: responsive.height / 3,
          child: GoogleMap(
            markers: mapsController.makers,
            initialCameraPosition: mapsController.initialCameraPosition!,
            onMapCreated: mapsController.createMapController,
            myLocationEnabled: true,
            gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>{
              Factory<OneSequenceGestureRecognizer>(
                () => EagerGestureRecognizer(),
              ),
            },
            zoomControlsEnabled: true,
            myLocationButtonEnabled: true,
            mapToolbarEnabled: false,
            compassEnabled: false,
            onTap: (position) {
              mapsController.onTap(
                position,
              );
              try {
                onTapLatLng!(position);
              } catch (_) {}
            },
          ),
        );
      },
    );
  }
}
