import 'package:flutter/foundation.dart';

class Phone with ChangeNotifier, DiagnosticableTreeMixin {
  String? _phone;
  String? _countryCode;
  String get phone => (_phone == null)? "" : _phone!;
  String? get countryCode => _countryCode;

  void setCountryCode(String? countryCode) async {
    _countryCode = countryCode;
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
    return countryCode!+phone;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) async {
    super.debugFillProperties(properties);
    properties.add(StringProperty('phone', phone));
    properties.add(StringProperty('countryCode', countryCode));
  }
}
