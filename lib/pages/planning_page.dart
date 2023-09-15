import 'package:flutter/material.dart';

class PlanningPage extends StatefulWidget {
  const PlanningPage({super.key});

  @override
  State<PlanningPage> createState() => _PlanningPageState();
}

class _PlanningPageState extends State<PlanningPage> {
  final events = [
    {
      'speaker': 'Speaker 1',
      'subject': 'Mobile development',
      'time': '08h:30 - 11h:15',
      'avatar': 'elon.jpeg',
    },
    {
      'speaker': 'Speaker 2',
      'subject': 'Cybersecurity & Malware',
      'time': '13h:45 - 15h:30',
      'avatar': 'elon.jpeg',
    },
    {
      'speaker': 'Speaker 3',
      'subject': 'Impact connection world',
      'time': '19h:30 - 21h:15',
      'avatar': 'elon.jpeg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) {
          final event = events[index];
          final avatar = event['avatar'];
          final time = event['time'];
          final speaker = event['speaker'];
          final subject = event['subject'];

          return Card(
            margin: const EdgeInsets.only(top: 25, right: 10, left: 10),
            child: ListTile(
              // contentPadding: const EdgeInsets.only(top: 0, bottom: 0),
              tileColor: Colors.black12,
              isThreeLine: true,
              leading: Image(image: AssetImage("assets/images/$avatar")),
              title: Text(
                '$speaker',
                style: titleStyle(),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 6.0),
                    child: Text(
                      '$subject',
                      style: const TextStyle(fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text('$time', style: textStyle2()),
                  ),
                ],
              ),
              trailing: const Icon(
                Icons.info,
                color: Colors.blue,
              ),
            ),
          );
        },
      ),
    );
  }
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
