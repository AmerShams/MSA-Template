import 'package:get/get.dart';
import 'package:msa/core/translation/languages/ar_language.dart';
import 'package:msa/core/translation/languages/en_language.dart';

class AppTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'ar_SA': ARLangauge.map,
        'en_US': ENLangauge.map,
      };
}

tr(String key) => key.tr;
