import 'dart:async';

import 'package:flutter/material.dart';
import 'package:icapps_translations_example/util/locale/localization.dart';

//============================================================//
//THIS FILE IS AUTO GENERATED. DO NOT EDIT//
//============================================================//
class LocalizationDelegate extends LocalizationsDelegate<Localization> {
  static const defaultLocale = Locale('nl');
  static const supportedLanguages = [
    'en',
    'nl',
  ];

  static const supportedLocales = [
    Locale('en'),
    Locale('nl'),
  ];

  Locale newLocale;
  Locale activeLocale;
  bool showLocalizationKeys;

  LocalizationDelegate({this.newLocale, this.showLocalizationKeys = false}) {
    if (newLocale != null) {
      activeLocale = newLocale;
    }
    showLocalizationKeys ??= false;
  }

  @override
  bool isSupported(Locale locale) => supportedLanguages.contains(locale.languageCode);

  @override
  Future<Localization> load(Locale locale) async {
    activeLocale = newLocale ?? locale;
    return Localization.load(activeLocale, showLocalizationKeys: showLocalizationKeys);
  }

  @override
  bool shouldReload(LocalizationsDelegate<Localization> old) => true;

}
