import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:task1/screen/contact/contact_screen.dart';
import 'package:task1/screen/contact/contact_view_model.dart';

Widget createContactScreen() => ChangeNotifierProvider<ContactViewModel>(
      create: (context) => ContactViewModel(),
      child: const MaterialApp(
        home: ContactScreen(),
      ),
    );

void main() {
  group('Contact Screen Widget Tests', () {
    ContactViewModel contactP = ContactViewModel();

    testWidgets('Testing title', (tester) async {
      await tester.pumpWidget(createContactScreen());
      expect(find.text('Contact'), findsOneWidget);
      expect(
        find.widgetWithIcon(FloatingActionButton, Icons.add),
        findsOneWidget,
      );
    });

    testWidgets('Testing if ListView shows up', (tester) async {
      await tester.pumpWidget(createContactScreen());
      contactP.getAllContactApi();
      await tester.pumpAndSettle();
      expect(find.byType(ListView), findsOneWidget);
    });
  });
}
