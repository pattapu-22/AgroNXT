import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'language_manager.dart'; // Import the new file

import 'screens/landing_page.dart';
import 'screens/login_page.dart';
import 'screens/signin_page.dart';
import 'screens/home_page.dart';
import 'screens/market_prediction_page.dart';
import 'screens/cold_storage_page.dart';
import 'screens/climate_details_page.dart';
import 'utils/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await EasyLocalization.ensureInitialized();

  // Determine the initial page based on authentication state
  Widget initialPage = await _determineInitialPage();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('te'), Locale('hi')],
      path: 'assets/lang', // Ensure this matches your JSON files location
      fallbackLocale: const Locale('en'),
      child: FarmerApp(initialPage: initialPage),
    ),
  );
}

Future<Widget> _determineInitialPage() async {
  // Initialize SharedPreferences
  final prefs = await SharedPreferences.getInstance();
  final isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

  // Check Firebase authentication state
  User? user = FirebaseAuth.instance.currentUser;

  if (user != null || isLoggedIn) {
    // User is logged in or was previously logged in
    prefs.setBool('isLoggedIn', true); // Ensure flag is set
    return const HomePage();
  } else {
    // Check if language selection is needed
    bool shouldShowLanguageScreen =
        await LanguageManager.shouldShowLanguageScreen();
    return shouldShowLanguageScreen
        ? const LanguageSelectionScreen()
        : const LandingPage();
  }
}

class FarmerApp extends StatelessWidget {
  final Widget initialPage;

  const FarmerApp({super.key, required this.initialPage});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Farmer Assistant',
      theme: AppTheme.lightTheme,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: initialPage,
      routes: {
        '/initial': (context) => const LandingPage(),
        '/login': (context) => const LoginPage(),
        '/signin': (context) => const SignInPage(),
        '/home': (context) => const HomePage(),
        '/market-prediction': (context) => const MarketPredictionPage(),
        '/cold-storage': (context) => const ColdStoragePage(),
        '/climate-details': (context) => const ClimateDetailsPage(),
      },
    );
  }
}

class LanguageSelectionScreen extends StatelessWidget {
  const LanguageSelectionScreen({Key? key}) : super(key: key);

  void _selectLanguage(BuildContext context, String languageCode) {
    LanguageManager.setLanguage(context, languageCode);
    Navigator.pushReplacementNamed(
        context, '/initial'); // Redirect to landing page
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Select Language',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 120, // Reduced button width
              child: ElevatedButton(
                onPressed: () => _selectLanguage(context, 'en'),
                child: const Text('English'),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 120, // Reduced button width
              child: ElevatedButton(
                onPressed: () => _selectLanguage(context, 'hi'),
                child: const Text('हिन्दी'),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 120, // Reduced button width
              child: ElevatedButton(
                onPressed: () => _selectLanguage(context, 'te'),
                child: const Text('తెలుగు'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
