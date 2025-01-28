import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_forge/presentation/localization/title.i69n.dart'
    as title;
import 'package:flutter_forge/presentation/localization/title_hi.i69n.dart';
import 'package:flutter_forge/presentation/localization/title_ar.i69n.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  title.Title get translations {
    switch (locale.languageCode) {
      case 'hi':
        return const Title_hi();
      case 'ar':
        return const Title_ar();
      default:
        return const title.Title();
    }
  }
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'hi', 'ar'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(AppLocalizations(locale));
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}
