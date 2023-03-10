import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:dash_flags/dash_flags.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class HomeMiddleBar extends StatefulWidget {
  const HomeMiddleBar({super.key});
  @override
  State<HomeMiddleBar> createState() => _HomeMiddleBarState();
}

class _HomeMiddleBarState extends State<HomeMiddleBar> {
  var maskFormatter = MaskTextInputFormatter(
      mask: '(###)###-####',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 160, 0, 0),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              showModalBottomSheet(
                backgroundColor: const Color(0xFF8EA9FB),
                context: context,
                builder: (BuildContext builder) {
                  return const SizedBox(
                    height: 500,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 20,  0),
                            child: BlurryContainer(
                                blur: 2,
                                height: 20,
                                width: 20,
                                elevation: 0,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
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
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: BlurryContainer(
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
            ),
          ),
        ],
      ),
    );
  }
}
