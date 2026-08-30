import 'package:flutter_test/flutter_test.dart';
import 'package:upb_cientifica_mobile/main.dart';

void main() {
  testWidgets('muestra Mis archivos', (tester) async {
    await tester.pumpWidget(const UpbApp());
    expect(find.text('Mis archivos'), findsOneWidget);
  });
}
