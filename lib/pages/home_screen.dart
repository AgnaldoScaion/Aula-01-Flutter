import 'package:flutter/material.dart';
import 'package:intro_flutter/components/custom_card.dart';
import 'package:intro_flutter/examples/simple_changer_notifier_example.dart';
import 'package:intro_flutter/examples/value_notifier_counter_screen.dart';
import 'package:intro_flutter/pages/counter_screen_page.dart';
import 'package:intro_flutter/pages/gps_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  CustomCard(
                    title: 'ChangeNotifier',
                    description: 'A simple ChangeNotifier',
                    icon: Icons.exposure_plus_1,
                    destination: const SimpleChangeNotifierExample(),
                  ),
                  CustomCard(
                    title: 'ValueNotifier Counter',
                    description: 'Counter using ValueNotifier',
                    icon: Icons.add_circle_outline,
                    destination: const ValueNotifierCounterScreen(),
                  ),
                  CustomCard(
                    title: 'Counter Screen',
                    description: 'Traditional counter screen',
                    icon: Icons.countertops,
                    destination: const CounterScreenPage(),
                  ),
                  CustomCard(
                    title: 'GPS Location',
                    description: 'Get device location using GPS',
                    icon: Icons.location_on,
                    destination: const GpsPage(),
                  ),
                  CustomCard(
                    title: 'State Management',
                    description: 'Various state management examples',
                    icon: Icons.settings,
                    destination: const SimpleChangeNotifierExample(),
                  ),
                  CustomCard(
                    title: 'Animations',
                    description: 'Flutter animations examples',
                    icon: Icons.animation,
                    destination: const ValueNotifierCounterScreen(),
                  ),
                  CustomCard(
                    title: 'API Calls',
                    description: 'HTTP requests and API integration',
                    icon: Icons.cloud,
                    destination: const CounterScreenPage(),
                  ),
                  CustomCard(
                    title: 'Database',
                    description: 'Local storage examples',
                    icon: Icons.storage,
                    destination: const GpsPage(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
