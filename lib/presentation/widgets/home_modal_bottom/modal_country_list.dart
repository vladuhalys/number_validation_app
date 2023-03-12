import 'package:dash_flags/dash_flags.dart';
import 'package:flutter/material.dart';

class ModalCountryList extends StatelessWidget {
  const ModalCountryList({super.key});

  @override
  Widget build(BuildContext context) {
    
    const List<Country> countries = Country.values;
    return Expanded(
      child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: countries.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(20, 12, 0, 12),
              child: Row(
                children: [
                  CountryFlag(
                    country: Country.fromCode(countries[index].name),
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Text(
                     //TODO: Country change log
                      countries[index].name,
                      textDirection: TextDirection.ltr,
                      style: const TextStyle(
                        color: Color(0xff594C74),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Text(
                       //TODO: Country change log
                      countries[index].name,
                      textDirection: TextDirection.ltr,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
