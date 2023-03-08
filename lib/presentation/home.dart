import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF8EA9FB),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 80, 0, 0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Get Started",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Row(
                children: [
                ActionChip(
                  label: Text('+380'),
                ),
                InputChip(label: Text('(123)123-1234')),
                //TODO
              ]
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: null,
        child: Icon(
          Icons.arrow_forward_rounded,
          color: Color(0xff594C74),
          size: 35.0,
        ),
      ),
    );
  }
}
