// ignore_for_file: public_member_api_docs,constant_identifier_names,type=lint,unused_element,unused_field
import 'package:flutter/foundation.dart';

@immutable
final class Assets {
  Assets();
  static final Icons icons = Icons();
  static final Pictures pictures = Pictures();
  static final Sound sound = Sound();
}

final String IconsImagesPath = 'assets/icons/images';

@immutable
final class IconsImages {
  IconsImages();

  final String ar = '$IconsImagesPath/ar.png';
  final String en = '$IconsImagesPath/en.png';
  final String tr = '$IconsImagesPath/tr.png';
}

@immutable
final class IconsLottie {
  IconsLottie();
}

@immutable
final class IconsSvg {
  IconsSvg();
}

@immutable
final class Icons {
  Icons();
  final IconsImages images = IconsImages();
  final IconsLottie lottie = IconsLottie();
  final IconsSvg svg = IconsSvg();
}

@immutable
final class PicturesImages {
  PicturesImages();
}

@immutable
final class PicturesLottie {
  PicturesLottie();
}

final String picturesSvgPath = 'assets/pictures/svg';

@immutable
final class PicturesSvg {
  PicturesSvg();
  final String backgroundCenter = '$picturesSvgPath/background_center.svg';
  final String backgroundTop = '$picturesSvgPath/background_top.svg';
  final String backgroundBottom = '$picturesSvgPath/background_bottom.svg';

  final String onbording1 = '$picturesSvgPath/onbording1.svg';
  final String onbording2 = '$picturesSvgPath/onbording2.svg';
  final String onbording3 = '$picturesSvgPath/onbording3.svg';
  final String onbording4 = '$picturesSvgPath/onbording4.svg';
}

@immutable
final class Pictures {
  Pictures();
  final PicturesImages images = PicturesImages();
  final PicturesLottie lottie = PicturesLottie();
  final PicturesSvg svg = PicturesSvg();
}

@immutable
final class Sound {
  Sound();
}
