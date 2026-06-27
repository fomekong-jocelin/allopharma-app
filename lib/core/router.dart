import 'package:allopharma_app/features/patient/presentation/map_screen.dart';
import 'package:allopharma_app/features/patient/presentation/signalement_form_screen.dart';
import 'package:allopharma_app/features/patient/presentation/signalement_list_screen.dart';
import 'package:allopharma_app/features/pharmacy/presentation/pharmacist_feed_screen.dart';
import 'package:allopharma_app/main.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
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
