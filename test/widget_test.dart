import 'package:allopharma_app/core/providers.dart';
import 'package:allopharma_app/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Home screen shows persona buttons', (WidgetTester tester) async {
    await tester.pumpWidget(const ProviderScope(child: MyApp()));

    expect(find.text('JE CHERCHE UN MÉDICAMENT'), findsOneWidget);
    expect(find.text('ESPACE PHARMACIEN'), findsOneWidget);
  });
}
