// screens/landing_page.dart
import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          'Farmer Assistant',
                          style: Theme.of(context).textTheme.headlineLarge,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 16),

                        // Subtitle
                        Text(
                          'Your smart companion for climate prediction, market analysis, and storage solutions',
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
                                  Icons.trending_up, 'Market Predictions'),
                              const Divider(),
                              _buildFeatureRow(
                                  Icons.ac_unit, 'Cold Storage Info'),
                              const Divider(),
                              _buildFeatureRow(Icons.cloud, 'Climate Details'),
                            ],
                          ),
                        ),
                        const Spacer(),

                        // Action buttons
                        CustomButton(
                          text: 'Login',
                          onPressed: () =>
                              Navigator.pushNamed(context, '/login'),
                          icon: Icons.login,
                        ),
                        const SizedBox(height: 16),
                        CustomButton(
                          text: 'Sign Up',
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
