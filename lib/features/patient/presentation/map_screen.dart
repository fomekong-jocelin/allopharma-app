import 'package:allopharma_app/core/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends ConsumerWidget {
  final List<String> pharmacyIds;

  const MapScreen({required this.pharmacyIds, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final backend = ref.read(pharmacyResponseProvider);
    final pharmacies = backend.getPharmaciesByIds(pharmacyIds);

    final markers = pharmacies.map((p) {
      return Marker(
        markerId: MarkerId(p.id),
        position: LatLng(p.latitude, p.longitude),
        infoWindow: InfoWindow(title: p.name, snippet: p.address),
      );
    }).toSet();

    final initialPosition = pharmacies.isNotEmpty
        ? LatLng(pharmacies.first.latitude, pharmacies.first.longitude)
        : const LatLng(4.0511, 9.7679); // Default Douala

    return Scaffold(
      appBar: AppBar(title: const Text('Pharmacies à proximité')),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: initialPosition,
          zoom: 13,
        ),
        markers: markers,
      ),
    );
  }
}
