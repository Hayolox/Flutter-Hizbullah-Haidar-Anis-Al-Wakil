import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:task1/screen/contact/contact_add_screen.dart';
import 'package:task1/screen/contact/contact_view_model.dart';

Widget createContactAddScreen() => ChangeNotifierProvider<ContactViewModel>(
      create: (context) => ContactViewModel(),
      child: const MaterialApp(
        home: ContactAddScreen(),
      ),
    );

void main() {
  group('Add Contact Screen Widget Tests', () {
    testWidgets('Testing title', (tester) async {
      await tester.pumpWidget(createContactAddScreen());
      expect(find.text('AddContact'), findsOneWidget);
    });

    testWidgets('Testing TextField', (tester) async {
      await tester.pumpWidget(createContactAddScreen());
      await tester.enterText(find.byKey(const Key('name')), 'akil');
      await tester.enterText(find.byKey(const Key('number')), '08123');
      // await tester.tap(find.byType(ElevatedButton));
      // await tester.tap(find.byKey(const ValueKey('add')));
      expect(find.byType(ElevatedButton), findsOneWidget);
    });
  });
}
