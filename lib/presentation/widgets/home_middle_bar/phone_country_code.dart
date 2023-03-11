import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:dash_flags/dash_flags.dart';
import 'package:flutter/material.dart';
import 'package:number_validation_app/presentation/widgets/home_modal_bottom_sheet.dart';

class PhoneCountryCode extends StatefulWidget {
  const PhoneCountryCode({super.key});

  @override
  State<PhoneCountryCode> createState() => _PhoneCountryCodeState();
}

class _PhoneCountryCodeState extends State<PhoneCountryCode> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          backgroundColor: const Color(0xFF8EA9FB),
          context: context,
          builder: (BuildContext builder) {
            return const ModalScreen();
          },
        );
      },
      child: BlurryContainer(
        blur: 2,
        height: 48,
        elevation: 0,
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        color: const Color(0xFFB7C8FD),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: CountryFlag(
                country: Country.fromCode('ua'),
                height: 20,
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(6, 0, 12, 0),
              child: Text(
                "+380",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  color: Color(0xff594C74),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}