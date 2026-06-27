import 'dart:async';
import 'package:allopharma_app/models/pharmacie_model.dart';
import 'package:allopharma_app/models/signalement_model.dart';
import 'package:allopharma_app/models/user_model.dart';

class MockBackend {
  final List<SignalementModel> _signalements = [];
  final List<PharmacieModel> _pharmacies = [
    const PharmacieModel(
      id: 'ph1',
      name: 'Pharmacie du Soleil',
      address: 'Akwa, Douala',
      latitude: 4.0483,
      longitude: 9.7043,
      hasDelivery: true,
    ),
    const PharmacieModel(
      id: 'ph2',
      name: 'Pharmacie de la Paix',
      address: 'Bonapriso, Douala',
      latitude: 4.0333,
      longitude: 9.7000,
      acceptsDigitalPrescription: true,
    ),
  ];

  final StreamController<List<SignalementModel>> _signalementController =
      StreamController<List<SignalementModel>>.broadcast();

  Stream<List<SignalementModel>> get signalementsStream => _signalementController.stream;

  List<SignalementModel> get currentSignalements => List.unmodifiable(_signalements);

  void addSignalement(SignalementModel signalement) {
    _signalements.add(signalement);
    _signalementController.add(List.from(_signalements));
  }

  void markAsAvailable(String signalementId, String pharmacyId) {
    final index = _signalements.indexWhere((s) => s.id == signalementId);
    if (index != -1) {
      final s = _signalements[index];
      if (!s.respondingPharmacyIds.contains(pharmacyId)) {
        _signalements[index] = s.copyWith(
          status: SignalementStatus.answered,
          respondingPharmacyIds: [...s.respondingPharmacyIds, pharmacyId],
        );
        _signalementController.add(List.from(_signalements));
      }
    }
  }

  List<PharmacieModel> getPharmaciesByIds(List<String> ids) {
    return _pharmacies.where((p) => ids.contains(p.id)).toList();
  }

  List<PharmacieModel> getAllPharmacies() => _pharmacies;
}

final mockBackend = MockBackend();
