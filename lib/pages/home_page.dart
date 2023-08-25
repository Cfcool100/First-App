import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'planning_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/logo.svg',
              // ignore: deprecated_member_use
              color: Colors.white,
            ),
            const Text(
              'Asynconf 2022',
              style: TextStyle(
                fontSize: 40,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
            const Text(
              'Salon virtuel de informatique. Du 27 au 29 deoctobre 2022.',
              style: TextStyle(
                fontSize: 21,
                color: Colors.white
              ),
              textAlign: TextAlign.center,
            ),
            const Padding(padding: EdgeInsets.only(top: 22)),
          ],
        ),
      );
  }
}
