import 'package:dash_flags/dash_flags.dart' as df;
import 'package:flutter/material.dart';
import 'package:number_validation_app/domain/model/country.dart';
import 'package:provider/provider.dart';
import 'dart:convert';

import '../../../domain/model/phone.dart';

class ModalCountryList extends StatelessWidget {
  const ModalCountryList({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Country.fetchAllCountries(),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.hasData) {
          List<Country> countries = snapshot.data;
          return Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(20, 12, 0, 12),
                    child: Table(

                      columnWidths: const {
                        0: FixedColumnWidth(40),
                        1: FixedColumnWidth(75),
                        2: FlexColumnWidth(50),
                      },
                      children: [
                        for (var item in countries)
                        
                          TableRow(
                            children: [
                              TableRowInkWell(
                                onTap: (){
                                  context.read<Phone>().setCountryCode('+${item.code}');
                                  context.read<Phone>().setCountryShortName(item.shortName);
                                  Navigator.pop(context);
                                },
                                child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                                child: df.CountryFlag(
                                  country: df.Country.fromCode(item.shortName),
                                  height: 28,
                                ),
                              ),
                              ),
                              TableRowInkWell(
                                onTap: (){
                                  context.read<Phone>().setCountryCode('+${item.code}');
                                  context.read<Phone>().setCountryShortName(item.shortName);
                                  Navigator.pop(context);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(24, 12, 12, 12),
                                  child: Text(
                                    '+${item.code}',
                                    textDirection: TextDirection.ltr,
                                    style: const TextStyle(
                                      color: Color(0xff594C74),
                                      fontSize: 16,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              TableRowInkWell(
                                onTap: (){
                                  context.read<Phone>().setCountryCode('+${item.code}');
                                  context.read<Phone>().setCountryShortName(item.shortName);
                                  Navigator.pop(context);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Text(
                                    const Utf8Decoder()
                                        .convert(item.name.codeUnits),
                                    textDirection: TextDirection.ltr,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                      ],
                    ),
                  );
                }),
          );
        } else {
          return const Center(child: Text("No Data"));
        }
      },
    );
  }
}