// // // screens/landing_page.dart
// // import 'package:flutter/material.dart';
// // import '../widgets/custom_button.dart';
// //
// // class LandingPage extends StatelessWidget {
// //   const LandingPage({Key? key}) : super(key: key);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: SafeArea(
// //         child: LayoutBuilder(
// //           builder: (context, constraints) {
// //             return SingleChildScrollView(
// //               child: ConstrainedBox(
// //                 constraints: BoxConstraints(
// //                   minHeight: constraints.maxHeight,
// //                 ),
// //                 child: IntrinsicHeight(
// //                   child: Padding(
// //                     padding: const EdgeInsets.all(24.0),
// //                     child: Column(
// //                       mainAxisAlignment: MainAxisAlignment.center,
// //                       crossAxisAlignment: CrossAxisAlignment.center,
// //                       children: [
// //                         const Spacer(),
// //                         // Logo/Icon
// //                         Container(
// //                           width: 120,
// //                           height: 120,
// //                           decoration: BoxDecoration(
// //                             shape: BoxShape.circle,
// //                             color:
// //                                 Theme.of(context).primaryColor.withOpacity(0.1),
// //                           ),
// //                           child: Icon(
// //                             Icons.agriculture,
// //                             size: 60,
// //                             color: Theme.of(context).primaryColor,
// //                           ),
// //                         ),
// //                         const SizedBox(height: 32),
// //
// //                         // Title
// //                         Text(
// //                           'farmer assist',
// //                           style: Theme.of(context).textTheme.headlineLarge,
// //                           textAlign: TextAlign.center,
// //                         ),
// //                         const SizedBox(height: 16),
// //
// //                         // Subtitle
// //                         Text(
// //                           'Your smart companion for climate prediction, market analysis, and storage solutions',
// //                           style: Theme.of(context).textTheme.bodyLarge,
// //                           textAlign: TextAlign.center,
// //                         ),
// //                         const SizedBox(height: 48),
// //
// //                         // Features preview
// //                         Container(
// //                           padding: const EdgeInsets.all(16),
// //                           decoration: BoxDecoration(
// //                             color: Colors.white,
// //                             borderRadius: BorderRadius.circular(12),
// //                             boxShadow: [
// //                               BoxShadow(
// //                                 color: Colors.grey.withOpacity(0.1),
// //                                 spreadRadius: 1,
// //                                 blurRadius: 8,
// //                                 offset: const Offset(0, 2),
// //                               ),
// //                             ],
// //                           ),
// //                           child: Column(
// //                             children: [
// //                               _buildFeatureRow(
// //                                   Icons.trending_up, 'Market Predictions'),
// //                               const Divider(),
// //                               _buildFeatureRow(
// //                                   Icons.ac_unit, 'Cold Storage Info'),
// //                               const Divider(),
// //                               _buildFeatureRow(Icons.cloud, 'Climate Details'),
// //                             ],
// //                           ),
// //                         ),
// //                         const Spacer(),
// //
// //                         // Action buttons
// //                         CustomButton(
// //                           text: 'Login',
// //                           onPressed: () =>
// //                               Navigator.pushNamed(context, '/login'),
// //                           icon: Icons.login,
// //                         ),
// //                         const SizedBox(height: 16),
// //                         CustomButton(
// //                           text: 'Sign Up',
// //                           onPressed: () =>
// //                               Navigator.pushNamed(context, '/signin'),
// //                           isOutlined: true,
// //                           icon: Icons.person_add,
// //                         ),
// //                         const SizedBox(height: 15),
// //                       ],
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //             );
// //           },
// //         ),
// //       ),
// //     );
// //   }
// //
// //   Widget _buildFeatureRow(IconData icon, String title) {
// //     return Padding(
// //       padding: const EdgeInsets.symmetric(vertical: 8),
// //       child: Row(
// //         children: [
// //           Icon(icon, size: 20, color: Colors.green),
// //           const SizedBox(width: 12),
// //           Text(title, style: const TextStyle(fontSize: 14)),
// //         ],
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:easy_localization/easy_localization.dart';
// import '../widgets/custom_button.dart';
//
// class LandingPage extends StatelessWidget {
//   const LandingPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: LayoutBuilder(
//           builder: (context, constraints) {
//             return SingleChildScrollView(
//               child: ConstrainedBox(
//                 constraints: BoxConstraints(
//                   minHeight: constraints.maxHeight,
//                 ),
//                 child: IntrinsicHeight(
//                   child: Padding(
//                     padding: const EdgeInsets.all(24.0),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         const Spacer(),
//                         // Logo/Icon
//                         Container(
//                           width: 120,
//                           height: 120,
//                           decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                             color:
//                                 Theme.of(context).primaryColor.withOpacity(0.1),
//                           ),
//                           child: Icon(
//                             Icons.agriculture,
//                             size: 60,
//                             color: Theme.of(context).primaryColor,
//                           ),
//                         ),
//                         const SizedBox(height: 32),
//
//                         // Title
//                         Text(
//                           'farmer_assist'.tr(),
//                           style: Theme.of(context).textTheme.headlineLarge,
//                           textAlign: TextAlign.center,
//                         ),
//                         const SizedBox(height: 16),
//
//                         // Subtitle
//                         Text(
//                           'landing_subtitle'.tr(),
//                           style: Theme.of(context).textTheme.bodyLarge,
//                           textAlign: TextAlign.center,
//                         ),
//                         const SizedBox(height: 48),
//
//                         // Features preview
//                         Container(
//                           padding: const EdgeInsets.all(16),
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(12),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.grey.withOpacity(0.1),
//                                 spreadRadius: 1,
//                                 blurRadius: 8,
//                                 offset: const Offset(0, 2),
//                               ),
//                             ],
//                           ),
//                           child: Column(
//                             children: [
//                               _buildFeatureRow(
//                                   Icons.trending_up, 'market_predictions'.tr()),
//                               const Divider(),
//                               _buildFeatureRow(
//                                   Icons.ac_unit, 'cold_storage_info'.tr()),
//                               const Divider(),
//                               _buildFeatureRow(
//                                   Icons.cloud, 'climate_details'.tr()),
//                             ],
//                           ),
//                         ),
//                         const Spacer(),
//
//                         // Action buttons
//                         CustomButton(
//                           text: 'login'.tr(),
//                           onPressed: () =>
//                               Navigator.pushNamed(context, '/login'),
//                           icon: Icons.login,
//                         ),
//                         const SizedBox(height: 16),
//                         CustomButton(
//                           text: 'sign_up'.tr(),
//                           onPressed: () =>
//                               Navigator.pushNamed(context, '/signin'),
//                           isOutlined: true,
//                           icon: Icons.person_add,
//                         ),
//                         const SizedBox(height: 15),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
//
//   Widget _buildFeatureRow(IconData icon, String title) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8),
//       child: Row(
//         children: [
//           Icon(icon, size: 20, color: Colors.green),
//           const SizedBox(width: 12),
//           Text(title, style: const TextStyle(fontSize: 14)),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../widgets/custom_button.dart';
import '../language_manager.dart'; // Import LanguageManager

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  String _selectedLanguage = 'en'; // Default language

  @override
  void initState() {
    super.initState();
    _loadSelectedLanguage();
  }

  Future<void> _loadSelectedLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    final selectedLanguage = prefs.getString('selected_language') ?? 'en';
    setState(() {
      _selectedLanguage = selectedLanguage;
    });
    context.setLocale(Locale(_selectedLanguage));
  }

  void _changeLanguage(String languageCode) {
    setState(() {
      _selectedLanguage = languageCode;
    });
    LanguageManager.setLanguage(context, languageCode);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: PopupMenuButton<String>(
              offset: const Offset(0, 40), // Position below button
              icon: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    _selectedLanguage == 'en'
                        ? 'English'
                        : _selectedLanguage == 'hi'
                            ? 'हिन्दी'
                            : 'తెలుగు',
                    style: const TextStyle(color: Colors.black87),
                  ),
                  const Icon(Icons.arrow_drop_down, color: Colors.black87),
                ],
              ),
              color: Colors.white,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                _buildLanguageItem('en', 'English'),
                _buildLanguageItem('hi', 'हिन्दी'),
                _buildLanguageItem('te', 'తెలుగు'),
              ],
              onSelected: (String languageCode) {
                _changeLanguage(languageCode);
              },
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: IntrinsicHeight(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Spacer(),
                        // Logo/Icon
                        Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                Theme.of(context).primaryColor.withOpacity(0.1),
                          ),
                          child: Icon(
                            Icons.agriculture,
                            size: 60,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        const SizedBox(height: 32),

                        // Title
                        Text(
                          'farmer_assist'.tr(),
                          style: Theme.of(context).textTheme.headlineLarge,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 16),

                        // Subtitle
                        Text(
                          'landing_subtitle'.tr(),
                          style: Theme.of(context).textTheme.bodyLarge,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 48),

                        // Features preview
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 8,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              _buildFeatureRow(
                                  Icons.trending_up, 'market_predictions'.tr()),
                              const Divider(),
                              _buildFeatureRow(
                                  Icons.ac_unit, 'cold_storage_info'.tr()),
                              const Divider(),
                              _buildFeatureRow(
                                  Icons.cloud, 'climate_details'.tr()),
                            ],
                          ),
                        ),
                        const Spacer(),

                        // Action buttons
                        CustomButton(
                          text: 'login'.tr(),
                          onPressed: () =>
                              Navigator.pushNamed(context, '/login'),
                          icon: Icons.login,
                        ),
                        const SizedBox(height: 16),
                        CustomButton(
                          text: 'sign_up'.tr(),
                          onPressed: () =>
                              Navigator.pushNamed(context, '/signin'),
                          isOutlined: true,
                          icon: Icons.person_add,
                        ),
                        const SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  PopupMenuEntry<String> _buildLanguageItem(String value, String label) {
    return PopupMenuItem<String>(
      value: value,
      child: Row(
        children: [
          Text(label),
          if (_selectedLanguage == value)
            const Padding(
              padding: EdgeInsets.only(left: 8),
              child: Icon(Icons.check, color: Colors.green),
            ),
        ],
      ),
    );
  }

  Widget _buildFeatureRow(IconData icon, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon, size: 20, color: Colors.green),
          const SizedBox(width: 12),
          Text(title, style: const TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}
