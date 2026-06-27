import 'package:allopharma_app/features/patient/presentation/map_screen.dart';
import 'package:allopharma_app/features/patient/presentation/signalement_form_screen.dart';
import 'package:allopharma_app/features/patient/presentation/signalement_list_screen.dart';
import 'package:allopharma_app/features/pharmacy/presentation/pharmacist_feed_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Import HomeScreen through a callback or define a basic version here if needed,
// but to avoid circular dependency, we will define the routes and let main.dart provide the HomeScreen if needed.
// Actually, circular dependency in Dart is usually fine, but let's see.

typedef HomeScreenBuilder = Widget Function();

GoRouter createRouter(HomeScreenBuilder homeScreenBuilder) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => homeScreenBuilder(),
      ),
      GoRoute(
        path: '/patient/new-signalement',
        builder: (context, state) => const SignalementFormScreen(),
      ),
      GoRoute(
        path: '/patient/my-signalements',
        builder: (context, state) => const SignalementListScreen(),
      ),
      GoRoute(
        path: '/patient/map',
        builder: (context, state) {
          final pharmacyIds = state.extra as List<String>? ?? [];
          return MapScreen(pharmacyIds: pharmacyIds);
        },
      ),
      GoRoute(
        path: '/pharmacist/feed',
        builder: (context, state) => const PharmacistFeedScreen(),
      ),
    ],
  );
}
