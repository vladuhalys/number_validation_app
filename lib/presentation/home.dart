import 'package:flutter/material.dart';
import 'package:dash_flags/dash_flags.dart';
import 'package:country_codes/country_codes.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8EA9FB),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 80, 0, 0),
        child: Column(
          children: [
            const Row(
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
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 160, 0, 0),
              child: Row(children: [
                GestureDetector(
                  onTap: () {
                    //TODO
                    // showMaterialModalBottomSheet(
                    //   context: context,
                    //   builder: (context) => SingleChildScrollView(
                    //     controller: ModalScrollController.of(context),
                    //     child: Container(),
                    //   ),
                    // );
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
                //TODO
                // InputChip(label: Text('(123)123-1234')),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: BlurryContainer(
                    blur: 2,
                    height: 48,
                    width: 24,
                    elevation: 0,
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    color: Colors.black,
                    child: TextField()
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
      floatingActionButton: const FloatingActionButton(
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
