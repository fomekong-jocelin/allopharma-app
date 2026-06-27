import 'package:allopharma_app/core/providers.dart';
import 'package:allopharma_app/models/signalement_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PharmacistFeedScreen extends ConsumerWidget {
  const PharmacistFeedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signalementsAsync = ref.watch(signalementsProvider);
    final user = ref.watch(currentUserProvider);
    final backend = ref.read(pharmacyResponseProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Fil des Signalements'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
               // Quick persona toggle for demo
               ref.read(currentUserProvider.notifier).update((state) => state?.role == UserRole.patient
                 ? state?.copyWith(role: UserRole.pharmacist)
                 : state?.copyWith(role: UserRole.patient));
            },
          )
        ],
      ),
      body: signalementsAsync.when(
        data: (signalements) {
          // Mock quota logic: 50/day for Free (simplified for demo)
          final visibleSignalements = signalements.take(50).toList();

          return ListView.builder(
            itemCount: visibleSignalements.length,
            itemBuilder: (context, index) {
              final s = visibleSignalements[index];
              final isResponded = s.respondingPharmacyIds.contains('ph1'); // Mock our pharmacy id as 'ph1'

              return Card(
                margin: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(s.medicationName),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Quartier: ${s.neighborhood}'),
                      Text('Urgence: ${s.urgency.name.toUpperCase()}',
                        style: TextStyle(color: s.urgency == SignalementUrgency.high ? Colors.red : Colors.orange)),
                    ],
                  ),
                  trailing: ElevatedButton(
                    onPressed: isResponded ? null : () {
                      backend.markAsAvailable(s.id, 'ph1');
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Réponse envoyée !')),
                      );
                    },
                    child: Text(isResponded ? 'Signalé' : 'Disponible'),
                  ),
                ),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Erreur: $err')),
      ),
    );
  }
}
