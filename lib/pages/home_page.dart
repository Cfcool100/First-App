import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'planning_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              // ignore: deprecated_member_use
              color: Colors.blue,
            ),
            const Text(
              'Asynconf 2022',
              style: TextStyle(
                fontSize: 40,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Salon virtuel de informatique. Du 27 au 29 deoctobre 2022.',
              style: TextStyle(
                fontSize: 21,
              ),
              textAlign: TextAlign.center,
            ),
            const Padding(padding: EdgeInsets.only(top: 22)),
            ElevatedButton.icon(
              style: const ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.only(top: 12,bottom: 12, right: 15,left: 15))),
              onPressed: () => {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (_, __, ___) => const PlanningPage(),
                    ))
              },
              label: const Text(
                'view planning',
                style: TextStyle(fontSize: 18),
              ),
              icon: const Icon(Icons.calendar_today),
            )
          ],
        ),
      ),
    );
  }
}
