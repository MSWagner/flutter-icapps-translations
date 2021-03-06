import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:icapps_translations_example/util/locale/localization_keys.dart';

//============================================================//
//THIS FILE IS AUTO GENERATED. DO NOT EDIT//
//============================================================//
class Localization {
  Map<String, dynamic> _localisedValues = Map();

  static Localization of(BuildContext context) => Localizations.of<Localization>(context, Localization);

  static Future<Localization> load(Locale locale, {bool showLocalizationKeys = false}) async {
    final localizations = Localization();
    if (showLocalizationKeys) {
      return localizations;
    }
    final jsonContent = await rootBundle.loadString('assets/localization/${locale.languageCode}.json');
    // ignore: avoid_as
    localizations._localisedValues = json.decode(jsonContent) as Map<String, dynamic>;
    return localizations;
  }

  String _t(String key, {List<dynamic> args}) {
    try {
      // ignore: avoid_as
      var value = _localisedValues[key] as String;
      if (value == null) return '$key';
      if (args == null || args.isEmpty) return value;
      args.asMap().forEach((index, arg) => value = _replaceWith(value, arg, index + 1));
      return value;
    } catch (e) {
      return '⚠$key⚠';
    }
  }

  String _replaceWith(String value, arg, argIndex) {
    if (arg == null) return value;
    if (arg is String) {
      return value.replaceAll('%$argIndex\$s', arg);
    } else if (arg is num) {
      return value.replaceAll('%$argIndex\$d', '$arg');
    }
    return value;
  }

  String get welcomeMessage => _t(LocalizationKeys.welcomeMessage);

  String getTranslation(String key, {List<dynamic> args}) => _t(key, args: args ?? List());

}
