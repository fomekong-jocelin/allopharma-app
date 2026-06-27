import 'package:allopharma_app/core/mock_backend.dart';
import 'package:allopharma_app/models/signalement_model.dart';
import 'package:allopharma_app/models/user_model.dart';
import 'package:flutter_riverpod/hooks_riverpod.dart';

final currentUserProvider = StateProvider<UserModel?>((ref) => const UserModel(
      id: 'u1',
      name: 'Marie',
      email: 'marie@example.com',
      role: UserRole.patient,
    ));

final signalementsProvider = StreamProvider<List<SignalementModel>>((ref) {
  return mockBackend.signalementsStream;
});

final pharmacyResponseProvider = Provider((ref) => mockBackend);
