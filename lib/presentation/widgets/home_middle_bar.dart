import 'package:flutter/material.dart';

import 'home_middle_bar/phone_country_code.dart';
import 'home_middle_bar/phone_text_field.dart';

class HomeMiddleBar extends StatefulWidget {
  const HomeMiddleBar({super.key});
  @override
  State<HomeMiddleBar> createState() => _HomeMiddleBarState();
}

class _HomeMiddleBarState extends State<HomeMiddleBar> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(0, 160, 0, 0),
      child: Row(
        children: [
          PhoneCountryCode(),
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: PhoneTextField(),
          ),
        ],
      ),
    );
  }
}
