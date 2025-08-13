import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;
  String _message = 'Hello World!';
  Color _counterColor = Colors.blue;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
      _message = 'Counter reset!';
      _counterColor = Colors.blue;
    });
  }

  void updateMessage() {
    if (_counter == 0) {
      _message = 'Contador Zerado!';
    } else if (_counter > 0){
      _message = 'Contador Poisitivo! ${_counter}';
    } else {
      _message = 'Contador Negativo! ${_counter}';
    }
  }

void updateColor() {
    if (_counter > 0) {
      _counterColor = Colors.green;
    } else if (_counter < 0) {
      _counterColor = Colors.red;
    } else {
      _counterColor = Colors.blue;
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
