import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
              color: const Color(0x665A98D9),
            ),
            const Text(
              'Asynconf 2022',
              style: TextStyle(
                fontSize: 40,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: Color(0x665A98D9)
              ),
            ),
            const Text(
              'Salon virtuel de informatique. Du 27 au 29 deoctobre 2022.',
              style: TextStyle(
                fontSize: 21,
                color: Colors.black
              ),
              textAlign: TextAlign.center,
            ),
            const Padding(padding: EdgeInsets.only(top: 22)),
          ],
        ),
      );
  }
}
