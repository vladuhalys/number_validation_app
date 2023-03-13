import 'package:flutter/foundation.dart';

class Phone with ChangeNotifier{
  String? _phone;
  String? _countryCode;
  String? _countryShortName;
  String? _countryFullName;

  String get phone => (_phone == null)? "" : _phone!;
  String get countryCode => (_countryCode == null)? "" : _countryCode!;
  String get countryShortName => (_countryShortName == null)? "" : _countryShortName!;
  String get countryFullName => (_countryFullName == null)? "" : _countryFullName!;

  void setCountryCode(String? countryCode) async {
    _countryCode = countryCode;
    notifyListeners();
  }
  void setCountryShortName(String? countryName)
  {
    _countryShortName = countryName;
    notifyListeners();
  }
  void setCountryFullName(String? countryName)
  {
    _countryShortName = countryName;
    notifyListeners();
  }

  void setPhoneNumber(String? phone) async {
    _phone = phone;
    notifyListeners();
  }

  int getPhoneStringSize() {
    return phone.length;
  }
  String getFullPhone() {
    return countryCode+phone;
  }
}
