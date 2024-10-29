import 'dart:convert';

import 'package:get/get.dart';
import 'package:promotion_pro/core/services/services.dart';

class Shared extends GetxController {
  static MyServices myServices = Get.find();
  @override
  void onInit() {
    initialServices();
    super.onInit();
  }

  static setValue(key, value) {
    if (value is String) {
      myServices.sharedPreferences.setString(key, value);
    }
    if (value is bool) {
      myServices.sharedPreferences.setBool(key, value);
    }
    if (value is double) {
      myServices.sharedPreferences.setDouble(key, value);
    }
    if (value is int) {
      myServices.sharedPreferences.setInt(key, value);
    }
    if (value is List<String>) {
      myServices.sharedPreferences.setStringList(key, value);
    }
    if (value is Map || value is List) {
      myServices.sharedPreferences.setString(key, json.encode(value));
    }
  }

  static getValue(key, {Object? initialVAlue}) {
    return myServices.sharedPreferences.get(key) ?? initialVAlue;
  }

  static remove(key) {
    return myServices.sharedPreferences.remove(key);
  }

  static getMapValue(key) {
    String value = myServices.sharedPreferences.get(key).toString();

    return json.decode(value) ?? {};
  }

  static getListValue(key) {
    String value = myServices.sharedPreferences.get(key).toString();

    return json.decode(value) ?? [];
  }

  static clear() {
    myServices.sharedPreferences.clear();
  }
}
