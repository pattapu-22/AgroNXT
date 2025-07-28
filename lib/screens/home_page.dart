// // screens/home_page.dart
// import 'package:flutter/material.dart';
// import '../widgets/feature_card.dart';
//
// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Farmer Assistant'),
//         backgroundColor: Theme.of(context).primaryColor,
//         foregroundColor: Colors.white,
//         elevation: 0,
//         actions: [
//           // IconButton(
//           //   icon: const Icon(Icons.notifications),
//           //   onPressed: () {
//           //     // TODO: Implement notifications
//           //   },
//           // ),
//           IconButton(
//             icon: const Icon(Icons.person),
//             onPressed: () {
//               // TODO: Implement profile
//             },
//           ),
//         ],
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const SizedBox(height: 16),
//
//               // Welcome message
//               Container(
//                 width: double.infinity,
//                 padding: const EdgeInsets.all(20),
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: [
//                       Theme.of(context).primaryColor.withOpacity(0.1),
//                       Theme.of(context).primaryColor.withOpacity(0.05),
//                     ],
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                   ),
//                   borderRadius: BorderRadius.circular(16),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Welcome back, Farmer!',
//                       style: Theme.of(context).textTheme.headlineMedium,
//                     ),
//                     const SizedBox(height: 8),
//                     Text(
//                       'Manage your farm with intelligent predictions and insights',
//                       style: Theme.of(context).textTheme.bodyMedium,
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 32),
//
//               // Features section
//               Text(
//                 'Features',
//                 style: Theme.of(context).textTheme.headlineMedium,
//               ),
//               const SizedBox(height: 16),
//
//               // Feature cards
//               FeatureCard(
//                 title: 'Market Prediction',
//                 description:
//                     'Get accurate crop price predictions based on market trends and historical data',
//                 icon: Icons.trending_up,
//                 onTap: () {
//                   Navigator.pushNamed(context, '/market-prediction');
//                 },
//               ),
//               const SizedBox(height: 16),
//
//               FeatureCard(
//                 title: 'Cold Storage',
//                 description:
//                     'Find nearby storage facilities and compare pricing options',
//                 icon: Icons.ac_unit,
//                 onTap: () {
//                   Navigator.pushNamed(context, '/cold-storage');
//                 },
//               ),
//               const SizedBox(height: 16),
//
//               FeatureCard(
//                 title: 'Climate Details',
//                 description:
//                     'Access detailed weather forecasts and climate change predictions',
//                 icon: Icons.cloud,
//                 onTap: () {
//                   Navigator.pushNamed(context, '/climate-details');
//                 },
//               ),
//               const SizedBox(height: 32),
//
//               // Quick stats (placeholder)
//               Container(
//                 padding: const EdgeInsets.all(20),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(16),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.1),
//                       spreadRadius: 1,
//                       blurRadius: 8,
//                       offset: const Offset(0, 2),
//                     ),
//                   ],
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Quick Stats',
//                       style: Theme.of(context).textTheme.headlineMedium,
//                     ),
//                     const SizedBox(height: 16),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         _buildStatItem(
//                             'Today\'s Weather', '28°C', Icons.wb_sunny),
//                         _buildStatItem(
//                             'Market Status', 'Stable', Icons.show_chart),
//                         _buildStatItem(
//                             'Storage Available', '15 Units', Icons.storage),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//    // body: SafeArea(
//       //   child: SingleChildScrollView(
//       //     padding: const EdgeInsets.all(16.0),
//       //     child: Column(
//       //       crossAxisAlignment: CrossAxisAlignment.start,
//       //       children: [
//       //         const SizedBox(height: 16),
//       //
//       //         // Welcome message
//       //         Container(
//       //           width: double.infinity,
//       //           padding: const EdgeInsets.all(20),
//       //           decoration: BoxDecoration(
//       //             gradient: LinearGradient(
//       //               colors: [
//       //                 Theme.of(context).primaryColor.withOpacity(0.1),
//       //                 Theme.of(context).primaryColor.withOpacity(0.05),
//       //               ],
//       //               begin: Alignment.topLeft,
//       //               end: Alignment.bottomRight,
//       //             ),
//       //             borderRadius: BorderRadius.circular(16),
//       //           ),
//       //           child: Column(
//       //             crossAxisAlignment: CrossAxisAlignment.start,
//       //             children: [
//       //               Text(
//       //                 'welcome_back'.tr(args: ['Farmer']),
//       //                 style: Theme.of(context).textTheme.headlineMedium,
//       //               ),
//       //               const SizedBox(height: 8),
//       //               Text(
//       //                 'manage_farm'.tr(),
//       //                 style: Theme.of(context).textTheme.bodyMedium,
//       //               ),
//       //             ],
//       //           ),
//       //         ),
//       //         const SizedBox(height: 32),
//       //
//       //         // Features section
//       //         Text(
//       //           'features'.tr(),
//       //           style: Theme.of(context).textTheme.headlineMedium,
//       //         ),
//       //         const SizedBox(height: 16),
//       //
//       //         // Feature cards
//       //         FeatureCard(
//       //           title: 'market_prediction'.tr(),
//       //           description: 'market_prediction_desc'.tr(),
//       //           icon: Icons.trending_up,
//       //           onTap: () {
//       //             Navigator.pushNamed(context, '/market-prediction');
//       //           },
//       //         ),
//       //         const SizedBox(height: 16),
//       //
//       //         FeatureCard(
//       //           title: 'cold_storage'.tr(),
//       //           description: 'cold_storage_desc'.tr(),
//       //           icon: Icons.ac_unit,
//       //           onTap: () {
//       //             Navigator.pushNamed(context, '/cold-storage');
//       //           },
//       //         ),
//       //         const SizedBox(height: 16),
//       //
//       //         FeatureCard(
//       //           title: 'climate_details'.tr(),
//       //           description: 'climate_details_desc'.tr(),
//       //           icon: Icons.cloud,
//       //           onTap: () {
//       //             Navigator.pushNamed(context, '/climate-details');
//       //           },
//       //         ),
//       //         const SizedBox(height: 32),
//       //
//       //         // Quick stats (placeholder)
//       //         Container(
//       //           padding: const EdgeInsets.all(20),
//       //           decoration: BoxDecoration(
//       //             color: Colors.white,
//       //             borderRadius: BorderRadius.circular(16),
//       //             boxShadow: [
//       //               BoxShadow(
//       //                 color: Colors.grey.withOpacity(0.1),
//       //                 spreadRadius: 1,
//       //                 blurRadius: 8,
//       //                 offset: const Offset(0, 2),
//       //               ),
//       //             ],
//       //           ),
//       //           child: Column(
//       //             crossAxisAlignment: CrossAxisAlignment.start,
//       //             children: [
//       //               Text(
//       //                 'quick_stats'.tr(),
//       //                 style: Theme.of(context).textTheme.headlineMedium,
//       //               ),
//       //               const SizedBox(height: 16),
//       //               Row(
//       //                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//       //                 children: [
//       //                   _buildStatItem(
//       //                       'today_weather'.tr(), '28°C', Icons.wb_sunny),
//       //                   _buildStatItem(
//       //                       'market_status'.tr(), 'Stable', Icons.show_chart),
//       //                   _buildStatItem('storage_available'.tr(), '15 Units',
//       //                       Icons.storage),
//       //                 ],
//       //               ),
//       //             ],
//       //           ),
//       //         ),
//       //       ],
//       //     ),
//       //   ),
//       // ),
//   Widget _buildStatItem(String title, String value, IconData icon) {
//     return Column(
//       children: [
//         Icon(icon, size: 32, color: Colors.green),
//         const SizedBox(height: 8),
//         Text(
//           value,
//           style: const TextStyle(
//             fontSize: 16,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         const SizedBox(height: 4),
//         Text(
//           title,
//           style: const TextStyle(
//             fontSize: 12,
//             color: Colors.grey,
//           ),
//           textAlign: TextAlign.center,
//         ),
//       ],
//     );
//   }
// }
//
//
//

// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:easy_localization/easy_localization.dart';
// import '../widgets/feature_card.dart';
//
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final User? user = FirebaseAuth.instance.currentUser;
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Row(
//           children: [
//             DropdownButton<Locale>(
//               underline: SizedBox(),
//               icon: const Icon(Icons.translate, color: Colors.white),
//               items: [
//                 DropdownMenuItem(
//                   child: Text("English"),
//                   value: const Locale('en'),
//                 ),
//                 DropdownMenuItem(
//                   child: Text("తెలుగు"),
//                   value: const Locale('te'),
//                 ),
//                 DropdownMenuItem(
//                   child: Text("हिन्दी"),
//                   value: const Locale('hi'),
//                 ),
//               ],
//               onChanged: (Locale? locale) {
//                 if (locale != null) {
//                   context.setLocale(locale);
//                 }
//               },
//             ),
//             const SizedBox(width: 10),
//             Text('farmer_assist'.tr()),
//           ],
//         ),
//         backgroundColor: Theme.of(context).primaryColor,
//         foregroundColor: Colors.white,
//         elevation: 0,
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.person),
//             onPressed: () {
//               showModalBottomSheet(
//                 context: context,
//                 builder: (_) => Container(
//                   padding: const EdgeInsets.all(16),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Text(
//                         '${'name'.tr()}: ${user?.displayName ?? 'No Name'}',
//                         style: const TextStyle(fontSize: 18),
//                       ),
//                       const SizedBox(height: 10),
//                       ElevatedButton.icon(
//                         icon: const Icon(Icons.logout),
//                         label: Text('logout'.tr()),
//                         onPressed: () async {
//                           await FirebaseAuth.instance.signOut();
//                           Navigator.of(context).pushReplacementNamed('/login');
//                         },
//                       ),
//                     ],
//                   ),
//                 ),
//               );
//             },
//           ),
//         ],
//       ),

// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:easy_localization/easy_localization.dart';
//
// import '../widgets/feature_card.dart';
//
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//
//   void _showAbout(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (_) => AlertDialog(
//         title: const Text('About'),
//         content: const Text(
//           'This is Farmer Assist, an application integrated with AI models for '
//           'weather prediction, market prediction, and cold storage availability. '
//           'It empowers farmers with data-driven decisions, reduces crop losses, '
//           'improves market linkage, and provides timely weather updates for effective planning.',
//         ),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.pop(context),
//             child: const Text('Close'),
//           ),
//         ],
//       ),
//     );
//   }
//
//   void _showHelp(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (_) => AlertDialog(
//         title: const Text('Help & FAQs'),
//         content: const SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text('Contact: farmerassist@gmail.com\n'),
//               Text('FAQs:'),
//               SizedBox(height: 10),
//               Text(
//                   'Q: How to change language?\nA: Click Translate and select.'),
//               SizedBox(height: 10),
//               Text(
//                   'Q: How to view market predictions?\nA: Go to Market section.'),
//               SizedBox(height: 10),
//               Text(
//                   'Q: How to check cold storage availability?\nA: Visit Cold Storage section.'),
//             ],
//           ),
//         ),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.pop(context),
//             child: const Text('Close'),
//           ),
//         ],
//       ),
//     );
//   }
//
//   void _confirmLogout(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (_) => AlertDialog(
//         title: const Text('Logout'),
//         content: const Text('Are you sure you want to logout?'),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.pop(context),
//             child: const Text('Cancel'),
//           ),
//           TextButton(
//             onPressed: () async {
//               await FirebaseAuth.instance.signOut();
//               Navigator.of(context)
//                   .pushNamedAndRemoveUntil('/login', (route) => false);
//             },
//             child: const Text('Logout'),
//           ),
//         ],
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('farmer_assist'.tr()),
//         backgroundColor: Theme.of(context).primaryColor,
//         foregroundColor: Colors.white,
//         elevation: 0,
//         actions: [
//           // Translate Dropdown
//           DropdownButtonHideUnderline(
//             child: DropdownButton<Locale>(
//               icon: const Icon(Icons.translate, color: Colors.white),
//               items: const [
//                 DropdownMenuItem(
//                   value: Locale('en'),
//                   child: Text("English"),
//                 ),
//                 DropdownMenuItem(
//                   value: Locale('te'),
//                   child: Text("తెలుగు"),
//                 ),
//                 DropdownMenuItem(
//                   value: Locale('hi'),
//                   child: Text("हिन्दी"),
//                 ),
//               ],
//               onChanged: (locale) {
//                 if (locale != null) context.setLocale(locale);
//               },
//             ),
//           ),
//
//           // About Button
//           IconButton(
//             icon: const Icon(Icons.info_outline),
//             onPressed: () => _showAbout(context),
//           ),
//
//           // Help Button
//           IconButton(
//             icon: const Icon(Icons.help_outline),
//             onPressed: () => _showHelp(context),
//           ),
//
//           // Logout Button
//           IconButton(
//             icon: const Icon(Icons.logout),
//             onPressed: () => _confirmLogout(context),
//           ),
//         ],
//       ),
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:easy_localization/easy_localization.dart';
// import '../widgets/feature_card.dart';
//
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//
//   void _showAbout(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (_) => AlertDialog(
//         title: const Text('About'),
//         content: const Text(
//           'This is Farmer Assist, an application integrated with AI models for '
//           'weather prediction, market prediction, and cold storage availability. '
//           'It empowers farmers with data-driven decisions, reduces crop losses, '
//           'improves market linkage, and provides timely weather updates for effective planning.',
//         ),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.pop(context),
//             child: const Text('Close'),
//           ),
//         ],
//       ),
//     );
//   }
//
//   void _showHelp(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (_) => AlertDialog(
//         title: const Text('Help & FAQs'),
//         content: const SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text('Contact: farmerassist@gmail.com\n'),
//               Text('FAQs:'),
//               SizedBox(height: 10),
//               Text(
//                   'Q: How to change language?\nA: Click Translate and select.'),
//               SizedBox(height: 10),
//               Text(
//                   'Q: How to view market predictions?\nA: Go to Market section.'),
//               SizedBox(height: 10),
//               Text(
//                   'Q: How to check cold storage availability?\nA: Visit Cold Storage section.'),
//             ],
//           ),
//         ),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.pop(context),
//             child: const Text('Close'),
//           ),
//         ],
//       ),
//     );
//   }
//
//   void _confirmLogout(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (_) => AlertDialog(
//         title: const Text('Logout'),
//         content: const Text('Are you sure you want to logout?'),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.pop(context),
//             child: const Text('Cancel'),
//           ),
//           TextButton(
//             onPressed: () async {
//               await FirebaseAuth.instance.signOut();
//               Navigator.of(context)
//                   .pushNamedAndRemoveUntil('/login', (route) => false);
//             },
//             child: const Text('Logout'),
//           ),
//         ],
//       ),
//     );
//   }
//
//   void _changeLanguage(BuildContext context, Locale locale) {
//     context.setLocale(locale);
//     Navigator.pop(context); // close drawer after selection
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('farmer_assist'.tr()),
//         backgroundColor: Theme.of(context).primaryColor,
//         foregroundColor: Colors.white,
//         elevation: 0,
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             const DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Color(0xFF2E7D32),
//               ),
//               child: Text(
//                 'Menu',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 24,
//                 ),
//               ),
//             ),
//             ExpansionTile(
//               leading: const Icon(Icons.translate),
//               title: const Text('Translate'),
//               children: [
//                 ListTile(
//                   title: const Text('English'),
//                   onTap: () => _changeLanguage(context, const Locale('en')),
//                 ),
//                 ListTile(
//                   title: const Text('తెలుగు'),
//                   onTap: () => _changeLanguage(context, const Locale('te')),
//                 ),
//                 ListTile(
//                   title: const Text('हिन्दी'),
//                   onTap: () => _changeLanguage(context, const Locale('hi')),
//                 ),
//               ],
//             ),
//             ListTile(
//               leading: const Icon(Icons.info_outline),
//               title: const Text('About'),
//               onTap: () {
//                 Navigator.pop(context); // close drawer first
//                 _showAbout(context);
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.help_outline),
//               title: const Text('Help'),
//               onTap: () {
//                 Navigator.pop(context); // close drawer first
//                 _showHelp(context);
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.logout),
//               title: const Text('Logout'),
//               onTap: () {
//                 Navigator.pop(context); // close drawer first
//                 _confirmLogout(context);
//               },
//             ),
//           ],
//         ),
//       ),
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:easy_localization/easy_localization.dart';
import '../widgets/feature_card.dart';
import '../utils/app_theme.dart'; // Import your AppTheme

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _showAbout(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('About'),
        content: const Text(
          'This is Farmer Assist, an application integrated with AI models for '
          'weather prediction, market prediction, and cold storage availability. '
          'It empowers farmers with data-driven decisions, reduces crop losses, '
          'improves market linkage, and provides timely weather updates for effective planning.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }

  void _showHelp(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Help & FAQs'),
        content: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Contact: farmerassist@gmail.com\n'),
              Text('FAQs:'),
              SizedBox(height: 10),
              Text(
                  'Q: How to change language?\nA: Click Translate and select.'),
              SizedBox(height: 10),
              Text(
                  'Q: How to view market predictions?\nA: Go to Market section.'),
              SizedBox(height: 10),
              Text(
                  'Q: How to check cold storage availability?\nA: Visit Cold Storage section.'),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }

  void _confirmLogout(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Logout'),
        content: const Text('Are you sure you want to logout?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.of(context)
                  .pushNamedAndRemoveUntil('/login', (route) => false);
            },
            child: const Text('Logout'),
          ),
        ],
      ),
    );
  }

  void _changeLanguage(BuildContext context, Locale locale) {
    context.setLocale(locale);
    Navigator.pop(context); // close drawer after selection
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      appBar: AppBar(
        title: Text(
          'farmer_assist'.tr(),
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: AppTheme.primaryColor,
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: AppTheme.primaryColor,
              ),
              child: Text(
                'Menu',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ExpansionTile(
              leading: const Icon(Icons.translate, color: AppTheme.textColor,),
              title: const Text('Translate',
                  style: TextStyle(color: AppTheme.textColor)),
              children: [
                ListTile(
                  title: const Text('English'),
                  onTap: () => _changeLanguage(context, const Locale('en')),
                ),
                ListTile(
                  title: const Text('తెలుగు'),
                  onTap: () => _changeLanguage(context, const Locale('te')),
                ),
                ListTile(
                  title: const Text('हिन्दी'),
                  onTap: () => _changeLanguage(context, const Locale('hi')),
                ),
              ],
            ),
            ListTile(
              leading:
                  const Icon(Icons.info_outline, color: AppTheme.textColor),
              title: const Text('About',
                  style: TextStyle(color: AppTheme.textColor)),
              onTap: () {
                Navigator.pop(context);
                _showAbout(context);
              },
            ),
            ListTile(
              leading:
                  const Icon(Icons.help_outline, color: AppTheme.textColor),
              title: const Text('Help',
                  style: TextStyle(color: AppTheme.textColor)),
              onTap: () {
                Navigator.pop(context);
                _showHelp(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout, color: AppTheme.textColor),
              title: const Text('Logout',
                  style: TextStyle(color: AppTheme.textColor)),
              onTap: () {
                Navigator.pop(context);
                _confirmLogout(context);
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),

              // Welcome message
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Theme.of(context).primaryColor.withOpacity(0.1),
                      Theme.of(context).primaryColor.withOpacity(0.05),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome back, Farmer!',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Manage your farm with intelligent predictions and insights',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),

              // Features section
              Text(
                'Features',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 16),

              // Feature cards
              FeatureCard(
                title: 'Market Prediction',
                description:
                    'Get accurate crop price predictions based on market trends and historical data',
                icon: Icons.trending_up,
                onTap: () {
                  Navigator.pushNamed(context, '/market-prediction');
                },
              ),
              const SizedBox(height: 16),

              FeatureCard(
                title: 'Cold Storage',
                description:
                    'Find nearby storage facilities and compare pricing options',
                icon: Icons.ac_unit,
                onTap: () {
                  Navigator.pushNamed(context, '/cold-storage');
                },
              ),
              const SizedBox(height: 16),

              FeatureCard(
                title: 'Climate Details',
                description:
                    'Access detailed weather forecasts and climate change predictions',
                icon: Icons.cloud,
                onTap: () {
                  Navigator.pushNamed(context, '/climate-details');
                },
              ),
              const SizedBox(height: 32),

              // Quick stats (placeholder)
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Quick Stats',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildStatItem(
                            'Today\'s Weather', '28°C', Icons.wb_sunny),
                        _buildStatItem(
                            'Market Status', 'Stable', Icons.show_chart),
                        _buildStatItem(
                            'Storage Available', '15 Units', Icons.storage),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatItem(String title, String value, IconData icon) {
    return Column(
      children: [
        Icon(icon, size: 32, color: Colors.green),
        const SizedBox(height: 8),
        Text(
          value,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          title,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
