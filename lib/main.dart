import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'pages/onboarding_page.dart';
import 'pages/dashboard_page.dart';
import 'pages/payment_page.dart';
import 'pages/receipt_page.dart';
import 'firebase_options.dart'; 

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ticketing App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      initialRoute: '/onboarding',
      routes: {
        '/onboarding': (context) => const OnboardingPage(),
        '/dashboard': (context) => const DashboardPage(),
        '/payment': (context) => const PaymentPage(ticketTitle: '', ticketType: '', price: 0),
        '/receipt': (context) => const ReceiptPage(ticketTitle: '', ticketType: '', price: 0),
      },
    );
  }
}
