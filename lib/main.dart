import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GreetingApp(),
    );
  }
}

class GreetingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Greeting App'),
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Hello, World!',
              style: TextStyle(
                color: Colors.red,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            const Text(
              'Welcome to Flutter!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 12),
            Image.asset(
              'assets/images/flutter.png',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Button Pressed!'),
                    backgroundColor: Colors.blue,
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                backgroundColor: Colors.green,
              ),
              child: const Text('Press Me'),
            ),
          ],
        ),
      ),
    );
  }
}
