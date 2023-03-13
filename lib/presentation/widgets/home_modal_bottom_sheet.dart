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
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: ModalAppBar(),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: TextField(
            style: const TextStyle(
              color: Color(0xff594C74),
              fontSize: 16,
              height: 0.5,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xFFB7C8FD),
              alignLabelWithHint: true,
              hintStyle: const TextStyle(
                color: Color(0xFF594C74),
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(16),
              ),
              prefixIcon: const Icon(Icons.search),
              hintText: 'Search',
            ),
          ),
        ),
        const ModalCountryList(),
      ],
    );
  }
}
