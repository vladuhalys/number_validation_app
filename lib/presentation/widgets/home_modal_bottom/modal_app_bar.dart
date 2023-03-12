import 'package:flutter/material.dart';

class ModalAppBar extends StatelessWidget {
  const ModalAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      const Text(
        'Country Code',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          color: Colors.white,
          fontSize: 32,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
      ),
      SizedBox(
          height: 25,
          width: 25,
          child: FittedBox(
            child: FloatingActionButton(
              elevation: 0.0,
              onPressed: () {
                Navigator.pop(context);
              },
              backgroundColor: const Color(0XFFB7C8FD),
              child: const Icon(
                Icons.close_rounded,
                size: 35,
              ),
            ),
          )),
    ]);
  }
}
