import 'package:get/get.dart';

getHeiht() {
  return Get.size.height * 1;
}

double getWidth() {
  return Get.size.width * 1;
}

double width(x) {
  return x * getWidth() / 392.727;
}

double height(x) {
  return x * getHeiht() / 826.909;
}

double emp(x) {
  var r = ((x * getHeiht() / 826.909) + (x * getWidth() / 392.727)) / 2;
  return r;
}
