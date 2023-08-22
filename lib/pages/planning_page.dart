import 'package:flutter/material.dart';

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
          child: Text('Soon available !',
              style: TextStyle(
                fontSize: 24,
              ))),
    );
  }
}
