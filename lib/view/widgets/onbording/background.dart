import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:promotion_pro/core/constants/assets.dart';

class BackgroundCustom extends StatelessWidget {
  final Widget body;
  final bool? top;
  final bool? center;
  final bool? bottom;

  const BackgroundCustom({
    super.key,
    required this.body,
    this.top,
    this.center,
    this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          if (top ?? false)
            Positioned(
              top: -50,
              right: -55,
              child: SvgPicture.asset(
                Assets.pictures.svg.backgroundTop,
              ),
            ),
          if (center ?? false)
            Center(
              child: SvgPicture.asset(Assets.pictures.svg.backgroundCenter),
            ),
          if (bottom ?? false)
            Positioned(
              bottom: -170,
              left: -120,
              child: SvgPicture.asset(
                Assets.pictures.svg.backgroundBottom,
              ),
            ),
          body,
        ],
      ),
    );
  }
}
