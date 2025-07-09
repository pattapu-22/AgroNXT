// screens/market_prediction_page.dart
import 'package:flutter/material.dart';

class MarketPredictionPage extends StatefulWidget {
  const MarketPredictionPage({Key? key}) : super(key: key);

  @override
  State<MarketPredictionPage> createState() => _MarketPredictionPageState();
}

class _MarketPredictionPageState extends State<MarketPredictionPage> {
  String? selectedCrop;
  final List<String> crops = [
    'Rice',
    'Wheat',
    'Corn',
    'Tomato',
    'Potato',
    'Onion'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Market Prediction'),
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),

              // Crop selection
              Text(
                'Select Crop',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 16),

              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).primaryColor),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: selectedCrop,
                    hint: const Text('Choose a crop'),
                    isExpanded: true,
                    items: crops.map((String crop) {
                      return DropdownMenuItem<String>(
                        value: crop,
                        child: Text(crop),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedCrop = newValue;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 32),

              // Prediction results (placeholder)
              if (selectedCrop != null) ...[
                Text(
                  'Price Prediction for $selectedCrop',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 16),

                Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildPredictionRow(
                            'Current Price', '₹45/kg', Colors.blue),
                        const SizedBox(height: 12),
                        _buildPredictionRow(
                            'Predicted Price (7 days)', '₹52/kg', Colors.green),
                        const SizedBox(height: 12),
                        _buildPredictionRow('Predicted Price (30 days)',
                            '₹48/kg', Colors.orange),
                        const SizedBox(height: 12),
                        _buildPredictionRow(
                            'Price Trend', 'Upward', Colors.green),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24),

                // Market insights
                Text(
                  'Market Insights',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 16),

                Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildInsightItem(
                          Icons.trending_up,
                          'High Demand Expected',
                          'Demand for $selectedCrop is expected to increase by 15% next week',
                        ),
                        const SizedBox(height: 16),
                        _buildInsightItem(
                          Icons.warning,
                          'Weather Impact',
                          'Monsoon predictions may affect supply in northern regions',
                        ),
                        const SizedBox(height: 16),
                        _buildInsightItem(
                          Icons.local_shipping,
                          'Transport Costs',
                          'Transportation costs are stable this month',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPredictionRow(String label, String value, Color color) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
      ],
    );
  }

  Widget _buildInsightItem(IconData icon, String title, String description) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: Theme.of(context).primaryColor),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                description,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
