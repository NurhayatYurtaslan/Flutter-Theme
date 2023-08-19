import 'app_localizations.dart';

/// The translations for English (`en`).
class L10nEn extends L10n {
  L10nEn([String locale = 'en']) : super(locale);

  @override
  String get app_name => 'Basic Mobile App';

  @override
  String get language => 'English';

  @override
  String get button_text_done => 'Done';
}