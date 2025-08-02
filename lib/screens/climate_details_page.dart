// // screens/climate_details_page.dart
// import 'package:flutter/material.dart';
//
// class ClimateDetailsPage extends StatefulWidget {
//   const ClimateDetailsPage({Key? key}) : super(key: key);
//
//   @override
//   State<ClimateDetailsPage> createState() => _ClimateDetailsPageState();
// }
//
// class _ClimateDetailsPageState extends State<ClimateDetailsPage> {
//   int selectedTabIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Climate Details'),
//         backgroundColor: Theme.of(context).primaryColor,
//         foregroundColor: Colors.white,
//       ),
//       body: SafeArea(
//         child: Column(
//           children: [
//             // Tab bar
//             Container(
//               margin: const EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 color: Colors.grey[200],
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: _buildTabButton('Today', 0),
//                   ),
//                   Expanded(
//                     child: _buildTabButton('7 Days', 1),
//                   ),
//                   Expanded(
//                     child: _buildTabButton('30 Days', 2),
//                   ),
//                 ],
//               ),
//             ),
//
//             Expanded(
//               child: SingleChildScrollView(
//                 padding: const EdgeInsets.all(16),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     // Current weather
//                     _buildCurrentWeatherCard(),
//                     const SizedBox(height: 24),
//
//                     // Weather forecast
//                     Text(
//                       'Weather Forecast',
//                       style: Theme.of(context).textTheme.headlineMedium,
//                     ),
//                     const SizedBox(height: 16),
//
//                     _buildWeatherForecast(),
//                     const SizedBox(height: 24),
//
//                     // Climate insights
//                     Text(
//                       'Climate Insights',
//                       style: Theme.of(context).textTheme.headlineMedium,
//                     ),
//                     const SizedBox(height: 16),
//
//                     _buildClimateInsights(),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildTabButton(String text, int index) {
//     bool isSelected = selectedTabIndex == index;
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           selectedTabIndex = index;
//         });
//       },
//       child: Container(
//         padding: const EdgeInsets.symmetric(vertical: 12),
//         decoration: BoxDecoration(
//           color:
//               isSelected ? Theme.of(context).primaryColor : Colors.transparent,
//           borderRadius: BorderRadius.circular(12),
//         ),
//         child: Text(
//           text,
//           textAlign: TextAlign.center,
//           style: TextStyle(
//             color: isSelected ? Colors.white : Colors.grey[600],
//             fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildCurrentWeatherCard() {
//     return Card(
//       elevation: 4,
//       child: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Vijayawada',
//                       style: Theme.of(context).textTheme.headlineMedium,
//                     ),
//                     const SizedBox(height: 4),
//                     Text(
//                       'July 09, 2025',
//                       style: TextStyle(
//                         color: Colors.grey[600],
//                         fontSize: 14,
//                       ),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: [
//                     Text(
//                       '28°C',
//                       style: TextStyle(
//                         fontSize: 32,
//                         fontWeight: FontWeight.bold,
//                         color: Theme.of(context).primaryColor,
//                       ),
//                     ),
//                     const Text(
//                       'Partly Cloudy',
//                       style: TextStyle(fontSize: 14),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             const SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 _buildWeatherDetail('Humidity', '65%', Icons.water_drop),
//                 _buildWeatherDetail('Wind', '12 km/h', Icons.air),
//                 _buildWeatherDetail('Pressure', '1013 hPa', Icons.speed),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildWeatherDetail(String label, String value, IconData icon) {
//     return Column(
//       children: [
//         Icon(icon, color: Theme.of(context).primaryColor),
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
//           label,
//           style: const TextStyle(
//             fontSize: 12,
//             color: Colors.grey,
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget _buildWeatherForecast() {
//     return Card(
//       elevation: 4,
//       child: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             _buildForecastRow(
//                 'Tomorrow', 'Sunny', '30°C / 22°C', Icons.wb_sunny),
//             const Divider(),
//             _buildForecastRow('Day 3', 'Rainy', '26°C / 20°C', Icons.cloud),
//             const Divider(),
//             // _buildForecastRow(
//             //     'Day 4', 'Partly Cloudy', '28°C / 21°C', Icons.partly_sunny),
//             // const Divider(),
//             _buildForecastRow(
//                 'Day 5', 'Thunderstorm', '25°C / 19°C', Icons.thunderstorm),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildForecastRow(
//       String day, String condition, String temp, IconData icon) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             children: [
//               Icon(icon, color: Theme.of(context).primaryColor),
//               const SizedBox(width: 12),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     day,
//                     style: const TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   Text(
//                     condition,
//                     style: const TextStyle(
//                       fontSize: 14,
//                       color: Colors.grey,
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//           Text(
//             temp,
//             style: const TextStyle(
//               fontSize: 14,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildClimateInsights() {
//     return Card(
//       elevation: 4,
//       child: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             _buildInsightItem(
//               Icons.water,
//               'Monsoon Prediction',
//               'Monsoon is expected to arrive 2 days earlier than usual',
//               Colors.blue,
//             ),
//             const SizedBox(height: 16),
//             _buildInsightItem(
//               Icons.thermostat,
//               'Temperature Trend',
//               'Temperatures are 2°C higher than seasonal average',
//               Colors.orange,
//             ),
//             const SizedBox(height: 16),
//             _buildInsightItem(
//               Icons.agriculture,
//               'Crop Recommendation',
//               'Ideal conditions for rice cultivation in the next 2 weeks',
//               Colors.green,
//             ),
//             const SizedBox(height: 16),
//             _buildInsightItem(
//               Icons.warning,
//               'Weather Alert',
//               'Heavy rainfall expected on July 12-13',
//               Colors.red,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildInsightItem(
//       IconData icon, String title, String description, Color color) {
//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Icon(icon, color: color, size: 24),
//         const SizedBox(width: 12),
//         Expanded(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 title,
//                 style: const TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 16,
//                 ),
//               ),
//               const SizedBox(height: 4),
//               Text(
//                 description,
//                 style: const TextStyle(
//                   fontSize: 14,
//                   color: Colors.grey,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class ClimateDetailsPage extends StatefulWidget {
  const ClimateDetailsPage({Key? key}) : super(key: key);

  @override
  State<ClimateDetailsPage> createState() => _ClimateDetailsPageState();
}

class _ClimateDetailsPageState extends State<ClimateDetailsPage> {
  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('climate_details'.tr()),
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Expanded(child: _buildTabButton('today'.tr(), 0)),
                  Expanded(child: _buildTabButton('7_days'.tr(), 1)),
                  Expanded(child: _buildTabButton('30_days'.tr(), 2)),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildCurrentWeatherCard(),
                    const SizedBox(height: 24),
                    Text(
                      'weather_forecast'.tr(),
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 16),
                    _buildWeatherForecast(),
                    const SizedBox(height: 24),
                    Text(
                      'climate_insights'.tr(),
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 16),
                    _buildClimateInsights(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabButton(String text, int index) {
    bool isSelected = selectedTabIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedTabIndex = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color:
              isSelected ? Theme.of(context).primaryColor : Colors.transparent,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.grey[600],
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }

  Widget _buildCurrentWeatherCard() {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Vijayawada',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'July 09, 2025',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '28°C',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    Text(
                      'partly_cloudy'.tr(),
                      style: const TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildWeatherDetail('humidity'.tr(), '65%', Icons.water_drop),
                _buildWeatherDetail('wind'.tr(), '12 km/h', Icons.air),
                _buildWeatherDetail('pressure'.tr(), '1013 hPa', Icons.speed),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWeatherDetail(String label, String value, IconData icon) {
    return Column(
      children: [
        Icon(icon, color: Theme.of(context).primaryColor),
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
          label,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  Widget _buildWeatherForecast() {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _buildForecastRow(
                'tomorrow'.tr(), 'sunny'.tr(), '30°C / 22°C', Icons.wb_sunny),
            const Divider(),
            _buildForecastRow(
                'day_3'.tr(), 'rainy'.tr(), '26°C / 20°C', Icons.cloud),
            const Divider(),
            _buildForecastRow('day_5'.tr(), 'thunderstorm'.tr(), '25°C / 19°C',
                Icons.thunderstorm),
          ],
        ),
      ),
    );
  }

  Widget _buildForecastRow(
      String day, String condition, String temp, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon, color: Theme.of(context).primaryColor),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    day,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    condition,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            temp,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildClimateInsights() {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildInsightItem(
              Icons.water,
              'monsoon_prediction'.tr(),
              'monsoon_arrival_early'.tr(),
              Colors.blue,
            ),
            const SizedBox(height: 16),
            _buildInsightItem(
              Icons.thermostat,
              'temperature_trend'.tr(),
              'temperature_higher'.tr(),
              Colors.orange,
            ),
            const SizedBox(height: 16),
            _buildInsightItem(
              Icons.agriculture,
              'crop_recommendation'.tr(),
              'rice_cultivation_ideal'.tr(),
              Colors.green,
            ),
            const SizedBox(height: 16),
            _buildInsightItem(
              Icons.warning,
              'weather_alert'.tr(),
              'heavy_rainfall_alert'.tr(),
              Colors.red,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInsightItem(
      IconData icon, String title, String description, Color color) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: color, size: 24),
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
