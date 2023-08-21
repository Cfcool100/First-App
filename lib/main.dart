import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 45,
        title: const Row(
          children: [
            Text('Asynconf 2022'),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/logo.svg',
              color: Colors.blue,
            ),
            const Text(
              'Asynconf 2022',
              style: TextStyle(
                fontSize: 42,
                fontFamily: 'Poppins',
                fontWeight:FontWeight.bold,
              ),
            ),
            const Text(
              'Salon virtuel de informatique. Du 27 au 29 deoctobre 2k22.',
              style: TextStyle(
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(onPressed: () => print('yo'),
             child: Text('I had a planning')
             )
          ],
        ),
      ),
    );
  }
}


// Planning page

class PlanningPage extends StatelessWidget {
  const PlanningPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text('Plannings du Salon'),
          ],
        ),
      ),
      body: const Center(
        child: 
        Text(
          'Soon available !',
          style: TextStyle(
                fontSize: 24,
              )
        )
      ),
    );
  }
}