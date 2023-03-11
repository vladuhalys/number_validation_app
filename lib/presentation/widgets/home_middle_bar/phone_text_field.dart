import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:number_validation_app/domain/model/phone.dart';
import 'package:provider/provider.dart';

class PhoneTextField extends StatefulWidget {
  const PhoneTextField({super.key});

  @override
  State<PhoneTextField> createState() => _PhoneTextFieldState();
}

class _PhoneTextFieldState extends State<PhoneTextField> {
  var maskFormatter = MaskTextInputFormatter(
      mask: '(###)###-####',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);

  @override
  Widget build(BuildContext context) {
    return BlurryContainer(
      blur: 2,
      height: 48,
      width: 256,
      elevation: 0,
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      color: const Color(0xFFB7C8FD),
      child: Padding(
        padding: const EdgeInsets.only(top: 12),
        child: TextField(
          inputFormatters: [maskFormatter],
          style: const TextStyle(
            color: Color(0xff594C74),
            fontSize: 16,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
          ),
          keyboardType: TextInputType.number,
          onChanged: (phone) {
            context.read<Phone>().setPhoneNumber(phone); //INFO : provider context
          },
          decoration: const InputDecoration(
            border: InputBorder.none,
            alignLabelWithHint: true,
            hintStyle: TextStyle(
              color: Color(0xff7886B8),
              fontSize: 16,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
            ),
            hintText: '(123)123-1234',
          ),
        ),
      ),
    );
  }
}
