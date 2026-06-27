import 'package:allopharma_app/core/providers.dart';
import 'package:allopharma_app/models/signalement_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SignalementFormScreen extends ConsumerStatefulWidget {
  const SignalementFormScreen({super.key});

  @override
  ConsumerState<SignalementFormScreen> createState() => _SignalementFormScreenState();
}

class _SignalementFormScreenState extends ConsumerState<SignalementFormScreen> {
  final _formKey = GlobalKey<FormState>();
  String _medicationName = '';
  String _city = '';
  String _neighborhood = '';
  SignalementUrgency _urgency = SignalementUrgency.low;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Nouveau Signalement')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Nom du médicament',
                  hintText: 'Ex: Coartem',
                  prefixIcon: Icon(Icons.medication),
                ),
                validator: (value) => value == null || value.isEmpty ? 'Champ requis' : null,
                onSaved: (value) => _medicationName = value!,
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Ville',
                  hintText: 'Ex: Douala',
                  prefixIcon: Icon(Icons.location_city),
                ),
                validator: (value) => value == null || value.isEmpty ? 'Champ requis' : null,
                onSaved: (value) => _city = value!,
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Quartier',
                  hintText: 'Ex: Akwa',
                  prefixIcon: Icon(Icons.map),
                ),
                validator: (value) => value == null || value.isEmpty ? 'Champ requis' : null,
                onSaved: (value) => _neighborhood = value!,
              ),
              const SizedBox(height: 24),
              const Text('Degré d\'urgence', style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              DropdownButtonFormField<SignalementUrgency>(
                value: _urgency,
                decoration: const InputDecoration(prefixIcon: Icon(Icons.priority_high)),
                items: SignalementUrgency.values.map((u) {
                  return DropdownMenuItem(value: u, child: Text(u.name.toUpperCase()));
                }).toList(),
                onChanged: (value) => setState(() => _urgency = value!),
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    final signalement = SignalementModel(
                      id: DateTime.now().millisecondsSinceEpoch.toString(),
                      medicationName: _medicationName,
                      city: _city,
                      neighborhood: _neighborhood,
                      urgency: _urgency,
                      createdAt: DateTime.now(),
                    );

                    ref.read(pharmacyResponseProvider).addSignalement(signalement);

                    context.go('/patient/my-signalements');
                  }
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Text('ENVOYER LE SIGNALEMENT'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
