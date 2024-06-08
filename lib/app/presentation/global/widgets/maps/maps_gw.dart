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
        return ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(25),
          ),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            width: responsive.width,
            height: responsive.height / 3,
            child: GoogleMap(
              initialCameraPosition: mapsController.initialCameraPosition!,
              onMapCreated: (co) => mapsController.createMapController(
                co,
              ),
              myLocationEnabled: true,
              gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>{
                Factory<OneSequenceGestureRecognizer>(
                  () => EagerGestureRecognizer(),
                ),
              },
              zoomControlsEnabled: false,
              myLocationButtonEnabled: true,
              mapToolbarEnabled: false,
              compassEnabled: false,
              onTap: onTapLatLng,
            ),
          ),
        );
      },
    );
  }
}
