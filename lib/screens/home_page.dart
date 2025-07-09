// screens/home_page.dart
import 'package:flutter/material.dart';
import '../widgets/feature_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Farmer Assistant'),
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // TODO: Implement notifications
            },
          ),
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              // TODO: Implement profile
            },
          ),
        ],
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
