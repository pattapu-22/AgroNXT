import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../widgets/feature_card.dart';
import '../utils/app_theme.dart';
import '../language_manager.dart';
import 'climate_details_page.dart';
import 'market_prediction_page.dart';
import 'cold_storage_page.dart';
import 'navigation_bar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0; // Track the selected bottom nav item
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
    await context.setLocale(Locale(_selectedLanguage));
  }

  void _changeLanguage(String languageCode) {
    setState(() {
      _selectedLanguage = languageCode;
    });
    LanguageManager.setLanguage(context, languageCode);
  }

  void _showAbout(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('about_title'.tr()),
        content: Text('about_content'.tr()),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('close'.tr()),
          ),
        ],
      ),
    );
  }

  void _showHelp(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('help_title'.tr()),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('contact'.tr() + ': farmerassist@gmail.com\n'),
              Text('faqs'.tr()),
              const SizedBox(height: 10),
              Text('faq_language'.tr()),
              const SizedBox(height: 10),
              Text('faq_market'.tr()),
              const SizedBox(height: 10),
              Text('faq_storage'.tr()),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('close'.tr()),
          ),
        ],
      ),
    );
  }

  void _confirmLogout(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('logout_title'.tr()),
        content: Text('logout_confirm'.tr()),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('cancel'.tr()),
          ),
          TextButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.of(context)
                  .pushNamedAndRemoveUntil('/initial', (route) => false);
            },
            child: Text('logout'.tr()),
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: Text(
          'argonxt'.tr(),
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: AppTheme.primaryColor,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: PopupMenuButton<String>(
              offset: const Offset(0, 40),
              icon: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    _selectedLanguage == 'en'
                        ? 'English'
                        : _selectedLanguage == 'hi'
                            ? 'हिन्दी'
                            : 'తెలుగు',
                    style: const TextStyle(color: Colors.white),
                  ),
                  const Icon(Icons.arrow_drop_down, color: Colors.white),
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: AppTheme.primaryColor,
              ),
              child: Text(
                'menu'.tr(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ExpansionTile(
              leading: const Icon(
                Icons.translate,
                color: AppTheme.textColor,
              ),
              title: Text('translate'.tr(),
                  style: TextStyle(color: AppTheme.textColor)),
              children: [
                ListTile(
                  title: Text('english'.tr()),
                  onTap: () => _changeLanguage('en'),
                ),
                ListTile(
                  title: Text('telugu'.tr()),
                  onTap: () => _changeLanguage('te'),
                ),
                ListTile(
                  title: Text('hindi'.tr()),
                  onTap: () => _changeLanguage('hi'),
                ),
              ],
            ),
            ListTile(
              leading:
                  const Icon(Icons.info_outline, color: AppTheme.textColor),
              title: Text('about'.tr(),
                  style: TextStyle(color: AppTheme.textColor)),
              onTap: () {
                Navigator.pop(context);
                _showAbout(context);
              },
            ),
            ListTile(
              leading:
                  const Icon(Icons.help_outline, color: AppTheme.textColor),
              title: Text('help'.tr(),
                  style: TextStyle(color: AppTheme.textColor)),
              onTap: () {
                Navigator.pop(context);
                _showHelp(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout, color: AppTheme.textColor),
              title: Text('logout'.tr(),
                  style: TextStyle(color: AppTheme.textColor)),
              onTap: () {
                Navigator.pop(context);
                _confirmLogout(context);
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: IndexedStack(
              index: _selectedIndex,
              children: [
                HomeContent(onIndexChanged: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                }),
                ClimateDetailsPage(),
                MarketPredictionPage(),
                ColdStoragePage(),
                Center(child: Text('Alerts Page'.tr())),
              ],
            ),
          ),
          NavigationBarWidget(
            selectedIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        ],
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
}

// Home Content Widget
class HomeContent extends StatefulWidget {
  final Function(int) onIndexChanged;

  const HomeContent({required this.onIndexChanged, super.key});

  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                  'welcome_msg'.tr(),
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 8),
                Text(
                  'manage_farm'.tr(),
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),

          // Features section
          Text(
            'features'.tr(),
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 16),

          // Feature cards
          FeatureCard(
            title: 'market_prediction'.tr(),
            description: 'market_prediction_desc'.tr(),
            icon: Icons.trending_up,
            onTap: () {
              widget.onIndexChanged(2); // Switch to Market
            },
          ),
          const SizedBox(height: 16),

          FeatureCard(
            title: 'cold_storage'.tr(),
            description: 'cold_storage_desc'.tr(),
            icon: Icons.ac_unit,
            onTap: () {
              widget.onIndexChanged(3); // Switch to Cold Storage
            },
          ),
          const SizedBox(height: 16),

          FeatureCard(
            title: 'climate_details'.tr(),
            description: 'climate_details_desc'.tr(),
            icon: Icons.cloud,
            onTap: () {
              widget.onIndexChanged(1); // Switch to Weather
            },
          ),
          const SizedBox(height: 32),

          // Quick stats
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
                  'quick_stats'.tr(),
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildStatItem(
                        'todays_weather'.tr(), '28°C', Icons.wb_sunny),
                    _buildStatItem(
                        'market_status'.tr(), 'Stable', Icons.show_chart),
                    _buildStatItem(
                        'storage_available'.tr(), '15 Units', Icons.storage),
                  ],
                ),
              ],
            ),
          ),
        ],
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
