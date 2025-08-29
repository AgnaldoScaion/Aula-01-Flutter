import 'package:flutter/material.dart';
import 'package:intro_flutter/components/custom_card.dart';
import 'package:intro_flutter/examples/simple_changer_notifier_example.dart';
import 'package:intro_flutter/examples/value_notifier_counter_screen.dart';
// import 'package:intro_flutter/pages/counter_screen_page.dart';
import 'package:intro_flutter/examples/value_notifier_counter_screen.dart';

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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
