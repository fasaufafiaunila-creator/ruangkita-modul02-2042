import 'package:flutter_test/flutter_test.dart';

import 'package:ruangkita_modul02/main.dart';

void main() {
  testWidgets('RuangKita app loads', (WidgetTester tester) async {
    await tester.pumpWidget(const RuangKitaApp());

    expect(find.text('RuangKita'), findsOneWidget);
    expect(find.text('M02-2042 • Ruang Praktikum'), findsOneWidget);
  });
}