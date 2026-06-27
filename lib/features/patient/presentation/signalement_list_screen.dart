import 'package:allopharma_app/core/providers.dart';
import 'package:allopharma_app/models/signalement_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SignalementListScreen extends ConsumerWidget {
  const SignalementListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signalementsAsync = ref.watch(signalementsProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Mes Signalements')),
      body: signalementsAsync.when(
        data: (signalements) {
          if (signalements.isEmpty) {
            return const Center(
              child: Text('Vous n\'avez pas encore de signalement.'),
            );
          }
          return ListView.builder(
            itemCount: signalements.length,
            itemBuilder: (context, index) {
              final s = signalements[index];
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: ListTile(
                  title: Text(s.medicationName, style: const TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text('${s.city}, ${s.neighborhood} - ${s.urgency.name.toUpperCase()}'),
                  trailing: s.status == SignalementStatus.answered
                      ? const Chip(
                          label: Text('Dispo'),
                          backgroundColor: Colors.green,
                          labelStyle: TextStyle(color: Colors.white),
                        )
                      : const Chip(label: Text('En attente')),
                  onTap: () {
                    if (s.respondingPharmacyIds.isNotEmpty) {
                       showDialog(
                         context: context,
                         builder: (context) => PharmacyResponseDialog(pharmacyIds: s.respondingPharmacyIds),
                       );
                    }
                  },
                ),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Erreur: $err')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.go('/patient/new-signalement'),
        child: const Icon(Icons.add),
      ),
    );
  }
}

class PharmacyResponseDialog extends ConsumerWidget {
  final List<String> pharmacyIds;
  const PharmacyResponseDialog({required this.pharmacyIds, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final backend = ref.read(pharmacyResponseProvider);
    final pharmacies = backend.getPharmaciesByIds(pharmacyIds);

    return AlertDialog(
      title: const Text('Pharmacies disponibles'),
      content: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Les pharmacies suivantes disposent de votre médicament :'),
            const SizedBox(height: 16),
            ListView.builder(
              shrinkWrap: true,
              itemCount: pharmacies.length,
              itemBuilder: (context, index) {
                final p = pharmacies[index];
                return ListTile(
                  leading: const Icon(Icons.local_pharmacy, color: Color(0xFF2E7D32)),
                  title: Text(p.name),
                  subtitle: Text(p.address),
                );
              },
            ),
          ],
        ),
      ),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context), child: const Text('Fermer')),
        ElevatedButton.icon(
          onPressed: () {
            Navigator.pop(context);
            context.push('/patient/map', extra: pharmacyIds);
          },
          icon: const Icon(Icons.map),
          label: const Text('Voir sur la carte'),
        ),
      ],
    );
  }
}
