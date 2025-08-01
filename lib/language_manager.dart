import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:easy_localization/easy_localization.dart';

class LanguageManager {
  static const String _languageKey = 'selected_language';

  static Future<void> initializeLanguage(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    final selectedLanguage = prefs.getString(_languageKey) ?? '';
    if (selectedLanguage.isNotEmpty) {
      context.setLocale(Locale(selectedLanguage));
    }
  }

  static Future<void> setLanguage(
      BuildContext context, String languageCode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_languageKey, languageCode);
    context.setLocale(Locale(languageCode));
  }

  static Future<bool> shouldShowLanguageScreen() {
    return SharedPreferences.getInstance().then((prefs) {
      return prefs.getString(_languageKey) == null ||
          prefs.getString(_languageKey)!.isEmpty;
    });
  }
}
