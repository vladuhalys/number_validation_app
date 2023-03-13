import 'dart:convert';
import 'package:http/http.dart' as http;

class Country {
  final String code;
  final String name;
  final String shortName;
  final String flag;

  Country({required this.code, required this.name, required this.shortName, required this.flag});

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      code: json['callingCodes'][0] as String,
      name: json['name'],
      shortName: json['alpha2Code'],
      flag: json['flag'],
    );
  }

  static Future<List<Country>> fetchAllCountries() async {
    final response = await http.get(Uri.parse('https://restcountries.com/v2/all'));

    if (response.statusCode == 200) {
      var countriesJson = jsonDecode(response.body) as List<dynamic>;
      List<Country> countries =
          countriesJson.map((c) => Country.fromJson(c)).toList();

      return countries;
    } else {
      throw Exception('Failed to load countries');
    }
  }
}