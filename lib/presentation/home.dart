import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 48, 0, 0),
                  child: Text(
                    "Get Started",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Column(
                children: [
                  FilledButton(
                    onPressed: null,
                    child: Text('+380'),
                  ),
                ],
              ),
              Column(
                children: [
                //   TextField(
                //       decoration: InputDecoration(
                //           border: InputBorder.none,
                //           hintText: '(123)123-1234',
                //           fillColor: Colors.black12,
                //           filled: true)),
                ],
              ),
            ]),
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
