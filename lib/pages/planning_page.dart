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
      body: Center(
          child: ListView(
        children: [
          Card(
            margin: const EdgeInsets.only(top: 25),
            child: ListTile(
              isThreeLine: true,
              leading: Image.asset("assets/images/elon.jpeg"),
              title: Text(
                'Speaker_1',
                style: titleStyle(),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 6.0),
                    child: Text(
                      'Mobile development.',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text('08h:30 - 11h15', style: textStyle2()),
                  ),
                ],
              ),
              trailing: const Icon(
                Icons.info,
                color: Colors.blue,
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.only(top: 25),
            child: ListTile(
              isThreeLine: true,
              leading: Image.asset("assets/images/elon.jpeg"),
              title: Text(
                'Speaker_2',
                style: titleStyle(),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 6.0),
                    child: Text(
                      'Cybersecurity & Malware.',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text('13h45 - 15h:30', style: textStyle2()),
                  ),
                ],
              ),
              trailing: const Icon(
                Icons.info,
                color: Colors.blue,
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.only(top: 25),
            shape: Border.all(width: .1, color: Colors.white38),
            child: ListTile(
              isThreeLine: true,
              leading: Image.asset("assets/images/elon.jpeg"),
              title: Text(
                'Speaker_3',
                style: titleStyle(),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 6.0),
                    child: Text(
                      'Impact connection world.',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text('19h:30 - 21h15', style: textStyle2()),
                  ),
                ],
              ),
              trailing: const Icon(
                Icons.info,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      )),
    );
  }

  TextStyle textStyle2() {
    const textStyleH = TextStyle(
        fontSize: 12, fontWeight: FontWeight.w700, color: Colors.black54);
    return textStyleH;
  }

  TextStyle titleStyle() {
    const textStyle =
        TextStyle(fontSize: 18, color: Colors.blue, fontFamily: 'Poppins');
    return textStyle;
  }
}
