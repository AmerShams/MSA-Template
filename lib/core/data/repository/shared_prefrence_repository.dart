import 'package:get/get.dart';
import 'package:msa/core/enums/data_type.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefrenceRepository {
  SharedPreferences pref = Get.find<SharedPreferences>();

  //!---- Keys  ------
  String PREF_APP_LANG = 'app_language';
  String PREF_IS_LOGED = 'loged_in';

  //!  logedIn

  void setLogedIn(bool value) {
    setPrefrenc(type: DataType.BOOL, key: PREF_IS_LOGED, value: value);
  }

  bool getLogedIn() {
    if (pref.containsKey(PREF_IS_LOGED))
      return getPrefrence(PREF_IS_LOGED);
    else
      return false;
  }

  //!App Language

  void setAppLanguage(String code) {
    setPrefrenc(type: DataType.STRING, key: PREF_APP_LANG, value: code);
  }

  String getAppLanguage() {
    if (pref.containsKey(PREF_APP_LANG)) {
      return getPrefrence(PREF_APP_LANG);
    } else {
      return 'ar';
    }
  }

  //*====================================

  void setPrefrenc({
    required DataType type,
    required String key,
    required dynamic value,
  }) async {
    switch (type) {
      case DataType.INT:
        await pref.setInt(key, value);
        break;
      case DataType.STRING:
        await pref.setString(key, value);
        break;
      case DataType.BOOL:
        await pref.setBool(key, value);
        break;
      case DataType.DOUBLE:
        await pref.setDouble(key, value);
        break;
      case DataType.LISTSTRING:
        await pref.setStringList(key, value);
        break;
    }
  }

  dynamic getPrefrence(String key) {
    return pref.get(key);
  }
}
