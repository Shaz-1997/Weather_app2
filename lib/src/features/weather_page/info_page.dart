import 'package:flutter/material.dart';
class InfoPage extends StatefulWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100,
        child: Column(
          children: [
            Container(
              height: 10,
              width: 10,
              color: Colors.cyanAccent,),
          ],
        ),
      ),
    );
  }
}
