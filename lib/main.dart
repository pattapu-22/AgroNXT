import 'package:flutter/material.dart';
import 'screens/landing_page.dart';
import 'screens/login_page.dart';
import 'screens/signin_page.dart';
import 'screens/home_page.dart';
import 'screens/market_prediction_page.dart';
import 'screens/cold_storage_page.dart';
import 'screens/climate_details_page.dart';
import 'utils/app_theme.dart';

void main() {
  runApp(const FarmerApp());
}

class FarmerApp extends StatelessWidget {
  const FarmerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Farmer Assistant',
      theme: AppTheme.lightTheme,
      home: const LandingPage(),
      routes: {
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
