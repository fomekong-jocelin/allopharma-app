import 'package:allopharma_app/core/providers.dart';
import 'package:allopharma_app/core/router.dart';
import 'package:allopharma_app/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = createRouter(() => const HomeScreen());

    return MaterialApp.router(
      title: 'AllôPharma',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2E7D32),
          primary: const Color(0xFF2E7D32),
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF2E7D32),
          foregroundColor: Colors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF2E7D32),
            foregroundColor: Colors.white,
          ),
        ),
      ),
      routerConfig: router,
    );
  }
}

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('AllôPharma')),
      body: Container(
        padding: const EdgeInsets.all(24.0),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(Icons.local_pharmacy, size: 80, color: Color(0xFF2E7D32)),
            const SizedBox(height: 24),
            const Text(
              'Bienvenue sur AllôPharma',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Trouvez vos médicaments rapidement dans les pharmacies proches de chez vous.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 48),
            ElevatedButton.icon(
              onPressed: () {
                ref.read(currentUserProvider.notifier).state = const UserModel(
                  id: 'u1',
                  name: 'Marie',
                  email: 'marie@example.com',
                  role: UserRole.patient,
                );
                context.push('/patient/new-signalement');
              },
              icon: const Icon(Icons.person_search),
              label: const Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Text('JE CHERCHE UN MÉDICAMENT', style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ),
            const SizedBox(height: 16),
            OutlinedButton.icon(
              onPressed: () {
                ref.read(currentUserProvider.notifier).state = const UserModel(
                  id: 'ph1',
                  name: 'Dr. Kamga',
                  email: 'kamga@pharmacie.com',
                  role: UserRole.pharmacist,
                );
                context.push('/pharmacist/feed');
              },
              icon: const Icon(Icons.local_pharmacy_outlined),
              label: const Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Text('ESPACE PHARMACIEN', style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Color(0xFF2E7D32)),
                foregroundColor: const Color(0xFF2E7D32),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
