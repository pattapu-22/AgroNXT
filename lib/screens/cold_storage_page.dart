// // screens/cold_storage_page.dart
// import 'package:flutter/material.dart';
//
// class ColdStoragePage extends StatefulWidget {
//   const ColdStoragePage({Key? key}) : super(key: key);
//
//   @override
//   State<ColdStoragePage> createState() => _ColdStoragePageState();
// }
//
// class _ColdStoragePageState extends State<ColdStoragePage> {
//   String? selectedLocation;
//   final List<String> locations = [
//     'Vijayawada',
//     'Guntur',
//     'Krishna',
//     'Visakhapatnam',
//     'Tirupati'
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Cold Storage'),
//         backgroundColor: Theme.of(context).primaryColor,
//         foregroundColor: Colors.white,
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const SizedBox(height: 16),
//
//               // Location selection
//               Text(
//                 'Select Location',
//                 style: Theme.of(context).textTheme.headlineMedium,
//               ),
//               const SizedBox(height: 16),
//
//               Container(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Theme.of(context).primaryColor),
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: DropdownButtonHideUnderline(
//                   child: DropdownButton<String>(
//                     value: selectedLocation,
//                     hint: const Text('Choose a location'),
//                     isExpanded: true,
//                     items: locations.map((String location) {
//                       return DropdownMenuItem<String>(
//                         value: location,
//                         child: Text(location),
//                       );
//                     }).toList(),
//                     onChanged: (String? newValue) {
//                       setState(() {
//                         selectedLocation = newValue;
//                       });
//                     },
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 32),
//
//               // Storage facilities
//               Text(
//                 'Available Storage Facilities',
//                 style: Theme.of(context).textTheme.headlineMedium,
//               ),
//               const SizedBox(height: 16),
//
//               // Storage cards
//               _buildStorageCard(
//                 'Green Valley Cold Storage',
//                 '2.5 km away',
//                 '₹15/kg/month',
//                 '85% capacity',
//                 Icons.check_circle,
//                 Colors.green,
//               ),
//               const SizedBox(height: 16),
//
//               _buildStorageCard(
//                 'Farmers Choice Storage',
//                 '4.2 km away',
//                 '₹12/kg/month',
//                 '60% capacity',
//                 Icons.check_circle,
//                 Colors.green,
//               ),
//               const SizedBox(height: 16),
//
//               _buildStorageCard(
//                 'Modern Cold Chain',
//                 '6.8 km away',
//                 '₹18/kg/month',
//                 '95% capacity',
//                 Icons.warning,
//                 Colors.orange,
//               ),
//               const SizedBox(height: 32),
//
//               // Price comparison
//               Text(
//                 'Price Comparison',
//                 style: Theme.of(context).textTheme.headlineMedium,
//               ),
//               const SizedBox(height: 16),
//
//               Card(
//                 elevation: 4,
//                 child: Padding(
//                   padding: const EdgeInsets.all(20),
//                   child: Column(
//                     children: [
//                       _buildPriceRow('Average Price', '₹15/kg/month'),
//                       const SizedBox(height: 12),
//                       _buildPriceRow('Lowest Price', '₹12/kg/month'),
//                       const SizedBox(height: 12),
//                       _buildPriceRow('Highest Price', '₹18/kg/month'),
//                       const SizedBox(height: 12),
//                       _buildPriceRow('Recommended', '₹12-15/kg/month'),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildStorageCard(String name, String distance, String price,
//       String capacity, IconData icon, Color iconColor) {
//     return Card(
//       elevation: 4,
//       child: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Row(
//           children: [
//             Icon(icon, color: iconColor, size: 32),
//             const SizedBox(width: 16),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     name,
//                     style: const TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const SizedBox(height: 4),
//                   Text(
//                     distance,
//                     style: const TextStyle(
//                       fontSize: 14,
//                       color: Colors.grey,
//                     ),
//                   ),
//                   const SizedBox(height: 8),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         price,
//                         style: TextStyle(
//                           fontSize: 14,
//                           fontWeight: FontWeight.bold,
//                           color: Theme.of(context).primaryColor,
//                         ),
//                       ),
//                       Text(
//                         capacity,
//                         style: const TextStyle(
//                           fontSize: 14,
//                           color: Colors.grey,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildPriceRow(String label, String value) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(
//           label,
//           style: Theme.of(context).textTheme.bodyLarge,
//         ),
//         Text(
//           value,
//           style: TextStyle(
//             fontSize: 16,
//             fontWeight: FontWeight.bold,
//             color: Theme.of(context).primaryColor,
//           ),
//         ),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class ColdStoragePage extends StatefulWidget {
  const ColdStoragePage({Key? key}) : super(key: key);

  @override
  State<ColdStoragePage> createState() => _ColdStoragePageState();
}

class _ColdStoragePageState extends State<ColdStoragePage> {
  String? selectedLocation;
  final List<String> locations = [
    'Vijayawada',
    'Guntur',
    'Krishna',
    'Visakhapatnam',
    'Tirupati'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('cold_storage'.tr()),
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
              Text(
                'select_location'.tr(),
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
                    value: selectedLocation,
                    hint: Text('choose_location'.tr()),
                    isExpanded: true,
                    items: locations.map((String location) {
                      return DropdownMenuItem<String>(
                        value: location,
                        child: Text(location),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedLocation = newValue;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 32),
              Text(
                'available_storage_facilities'.tr(),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 16),
              _buildStorageCard(
                'Green Valley Cold Storage',
                '2.5 km away',
                '₹15/kg/month',
                '85% capacity',
                Icons.check_circle,
                Colors.green,
              ),
              const SizedBox(height: 16),
              _buildStorageCard(
                'Farmers Choice Storage',
                '4.2 km away',
                '₹12/kg/month',
                '60% capacity',
                Icons.check_circle,
                Colors.green,
              ),
              const SizedBox(height: 16),
              _buildStorageCard(
                'Modern Cold Chain',
                '6.8 km away',
                '₹18/kg/month',
                '95% capacity',
                Icons.warning,
                Colors.orange,
              ),
              const SizedBox(height: 32),
              Text(
                'price_comparison'.tr(),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 16),
              Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      _buildPriceRow('average_price'.tr(), '₹15/kg/month'),
                      const SizedBox(height: 12),
                      _buildPriceRow('lowest_price'.tr(), '₹12/kg/month'),
                      const SizedBox(height: 12),
                      _buildPriceRow('highest_price'.tr(), '₹18/kg/month'),
                      const SizedBox(height: 12),
                      _buildPriceRow(
                          'recommended_price'.tr(), '₹12-15/kg/month'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStorageCard(String name, String distance, String price,
      String capacity, IconData icon, Color iconColor) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(icon, color: iconColor, size: 32),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    distance,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        price,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      Text(
                        capacity,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPriceRow(String label, String value) {
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
            color: Theme.of(context).primaryColor,
          ),
        ),
      ],
    );
  }
}
