// // import 'package:flutter/material.dart';
// // import 'package:firebase_core/firebase_core.dart';
// // import 'package:easy_localization/easy_localization.dart';
// //
// // import 'screens/landing_page.dart';
// // import 'screens/login_page.dart';
// // import 'screens/signin_page.dart';
// // import 'screens/home_page.dart';
// // import 'screens/market_prediction_page.dart';
// // import 'screens/cold_storage_page.dart';
// // import 'screens/climate_details_page.dart';
// // import 'utils/app_theme.dart';
// //
// // void main() async {
// //   WidgetsFlutterBinding.ensureInitialized();
// //   await Firebase.initializeApp();
// //   await EasyLocalization.ensureInitialized();
// //
// //   runApp(
// //     EasyLocalization(
// //       supportedLocales: [Locale('en'), Locale('te'), Locale('hi')],
// //       path: 'assets/lang',
// //       fallbackLocale: Locale('en'),
// //       child: const FarmerApp(),
// //     ),
// //   );
// // }
// //
// // class FarmerApp extends StatelessWidget {
// //   const FarmerApp({Key? key}) : super(key: key);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Farmer Assistant',
// //       theme: AppTheme.lightTheme,
// //       localizationsDelegates: context.localizationDelegates,
// //       supportedLocales: context.supportedLocales,
// //       locale: context.locale,
// //       home: const LandingPage(),
// //       routes: {
// //         '/login': (context) => const LoginPage(),
// //         '/signin': (context) => const SignInPage(),
// //         '/home': (context) => const HomePage(),
// //         '/market-prediction': (context) => const MarketPredictionPage(),
// //         '/cold-storage': (context) => const ColdStoragePage(),
// //         '/climate-details': (context) => const ClimateDetailsPage(),
// //       },
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'language_manager.dart'; // Import the new file
//
// import 'screens/landing_page.dart';
// import 'screens/login_page.dart';
// import 'screens/signin_page.dart';
// import 'screens/home_page.dart';
// import 'screens/market_prediction_page.dart';
// import 'screens/cold_storage_page.dart';
// import 'screens/climate_details_page.dart';
// import 'utils/app_theme.dart';
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   await EasyLocalization.ensureInitialized();
//
//   runApp(
//     EasyLocalization(
//       supportedLocales: [Locale('en'), Locale('te'), Locale('hi')],
//       path: 'assets/lang', // Ensure this matches your JSON files location
//       fallbackLocale: Locale('en'),
//       child: const FarmerApp(),
//     ),
//   );
// }
//
// class FarmerApp extends StatefulWidget {
//   const FarmerApp({Key? key}) : super(key: key);
//
//   @override
//   _FarmerAppState createState() => _FarmerAppState();
// }
//
// class _FarmerAppState extends State<FarmerApp> {
//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     // Initialize the language when the widget is built
//     LanguageManager.initializeLanguage(context);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<bool>(
//       future: LanguageManager.shouldShowLanguageScreen(),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return const MaterialApp(
//             home: Scaffold(
//               body: Center(child: CircularProgressIndicator()),
//             ),
//           );
//         }
//
//         final showLanguageScreen = snapshot.data ?? true;
//
//         return MaterialApp(
//           title: 'Farmer Assistant',
//           theme: AppTheme.lightTheme,
//           localizationsDelegates: context.localizationDelegates,
//           supportedLocales: context.supportedLocales,
//           locale: context.locale,
//           home: showLanguageScreen
//               ? const LanguageSelectionScreen()
//               : const LandingPage(),
//           routes: {
//             '/login': (context) => const LoginPage(),
//             '/signin': (context) => const SignInPage(),
//             '/home': (context) => const HomePage(),
//             '/market-prediction': (context) => const MarketPredictionPage(),
//             '/cold-storage': (context) => const ColdStoragePage(),
//             '/climate-details': (context) => const ClimateDetailsPage(),
//           },
//         );
//       },
//     );
//   }
// }
//
// class LanguageSelectionScreen extends StatelessWidget {
//   const LanguageSelectionScreen({Key? key}) : super(key: key);
//
//   void _selectLanguage(BuildContext context, String languageCode) {
//     LanguageManager.setLanguage(context, languageCode);
//     Navigator.pushReplacementNamed(
//         context, '/login'); // Redirect to login after selection
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text(
//               'Select Language',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () => _selectLanguage(context, 'en'),
//               child: const Text('English'),
//             ),
//             const SizedBox(height: 10),
//             ElevatedButton(
//               onPressed: () => _selectLanguage(context, 'hi'),
//               child: const Text('हिन्दी'),
//             ),
//             const SizedBox(height: 10),
//             ElevatedButton(
//               onPressed: () => _selectLanguage(context, 'te'),
//               child: const Text('తెలుగు'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:easy_localization/easy_localization.dart';
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

  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('te'), Locale('hi')],
      path: 'assets/lang', // Ensure this matches your JSON files location
      fallbackLocale: Locale('en'),
      child: const FarmerApp(),
    ),
  );
}

class FarmerApp extends StatefulWidget {
  const FarmerApp({Key? key}) : super(key: key);

  @override
  _FarmerAppState createState() => _FarmerAppState();
}

class _FarmerAppState extends State<FarmerApp> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Initialize the language when the widget is built
    LanguageManager.initializeLanguage(context);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: LanguageManager.shouldShowLanguageScreen(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const MaterialApp(
            home: Scaffold(
              body: Center(child: CircularProgressIndicator()),
            ),
          );
        }

        final showLanguageScreen = snapshot.data ?? true;

        return MaterialApp(
          title: 'Farmer Assistant',
          theme: AppTheme.lightTheme,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          home: showLanguageScreen
              ? const LanguageSelectionScreen()
              : const LandingPage(),
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
      },
    );
  }
}

class LanguageSelectionScreen extends StatelessWidget {
  const LanguageSelectionScreen({Key? key}) : super(key: key);

  void _selectLanguage(BuildContext context, String languageCode) {
    LanguageManager.setLanguage(context, languageCode);
    Navigator.pushReplacementNamed(context, '/'); // Redirect to landing page
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
