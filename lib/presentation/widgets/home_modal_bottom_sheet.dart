import 'package:flutter/material.dart';

import 'home_modal_bottom/modal_app_bar.dart';
import 'home_modal_bottom/modal_country_list.dart';

class ModalScreen extends StatefulWidget {
  const ModalScreen({super.key});
  @override
  State<ModalScreen> createState() => _ModalScreenState();
}

class _ModalScreenState extends State<ModalScreen> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.all(20.0),
          child: ModalAppBar(),
        ),
        ModalCountryList(),
      ],
    );
  }
}
