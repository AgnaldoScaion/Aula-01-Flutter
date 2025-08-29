import 'package:flutter/material.dart';

class CounterScreenValueNotifier extends StatefulWidget {
  const CounterScreenValueNotifier({super.key});

  @override
  State<CounterScreenValueNotifier> createState() => _CounterScreenValueNotifierState();
}

class _CounterScreenValueNotifierState extends State<CounterScreenValueNotifier> {
  final ValueNotifier<int> _counter = ValueNotifier<int>(0);
  final ValueNotifier<String> _message = ValueNotifier<String>('Hello World!');
  final ValueNotifier<Color> _counterColor = ValueNotifier<Color>(Colors.blue);

  @override
  void dispose() {
    _counter.dispose();
    _message.dispose();
    _counterColor.dispose();
    super.dispose();
  }

  void _incrementCounter() {
    _counter.value++;
    _updateMessage();
    _updateColor();
  }

  void _decrementCounter() {
    _counter.value--;
    _updateMessage();
    _updateColor();
  }

  void _resetCounter() {
    _counter.value = 0;
    _message.value = 'Counter reset!';
    _counterColor.value = Colors.blue;
  }

  void _updateMessage() {
    if (_counter.value == 0) {
      _message.value = 'Contador Zerado!';
    } else if (_counter.value > 0) {
      _message.value = 'Contador Positivo! ${_counter.value}';
    } else {
      _message.value = 'Contador Negativo! ${_counter.value}';
    }
  }

  void _updateColor() {
    if (_counter.value > 0) {
      _counterColor.value = Colors.green;
    } else if (_counter.value < 0) {
      _counterColor.value = Colors.red;
    } else {
      _counterColor.value = Colors.blue;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Contador"), backgroundColor: Colors.blue),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ValueListenableBuilder<Color>(
                valueListenable: _counterColor,
                builder: (context, color, child) {
                  return Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: color.withAlpha(1),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.blue, width: 2),
                    ),
                    child: Column(
                      children: [
                        const Text(
                          'Valor do Contador:',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 10),
                        ValueListenableBuilder<int>(
                          valueListenable: _counter,
                          builder: (context, counter, child) {
                            return Text(
                              '$counter',
                              style: TextStyle(
                                fontSize: 48,
                                fontWeight: FontWeight.bold,
                                color: _counterColor.value,
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              ValueListenableBuilder<String>(
                valueListenable: _message,
                builder: (context, message, child) {
                  return Text(
                    message,
                    style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
                    textAlign: TextAlign.center,
                  );
                },
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: _decrementCounter,
                    label: const Text('Decrementar'),
                    icon: const Icon(Icons.remove),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: _incrementCounter,
                    label: const Text('Incrementar'),
                    icon: const Icon(Icons.add),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: _resetCounter,
                    label: const Text('Resetar'),
                    icon: const Icon(Icons.refresh),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}