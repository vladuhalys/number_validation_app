import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';

class ModalScreen extends StatefulWidget {
  const ModalScreen({super.key});

  @override
  State<ModalScreen> createState() => _ModalScreenState();
}

class _ModalScreenState extends State<ModalScreen> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 500,
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 20, 0),
              child: BlurryContainer(
                  blur: 2,
                  height: 20,
                  width: 20,
                  elevation: 0,
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  color: Color(0xFFB7C8FD),
                  child: Icon(
                    //TODO new widget
                    Icons.close_rounded,
                    size: 12,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
