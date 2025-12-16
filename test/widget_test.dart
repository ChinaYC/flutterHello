import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_hello/main.dart';

void main() {
  testWidgets('App starts smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('A random AWESOME idea:'), findsOneWidget);
  });
}
