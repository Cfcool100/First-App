import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 45,
          title: const Row(
            children: [
              Text('Asynconf 2022'),
            ],
          ),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Asynconf 2022',
                style: TextStyle(
                  fontSize: 42,
                  fontFamily: 'Poppins',
                  fontWeight:FontWeight.bold,
                ),
              ),
                // ajouter un padding
              Text(
                'Salon virtuel de informatique. Du 27 au 29 deoctobre 2k22.',
                style: TextStyle(
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
