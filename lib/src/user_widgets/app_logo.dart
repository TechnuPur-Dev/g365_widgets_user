import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:g365_widgets_user/constants.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key, this.height, this.width, this.isLight = false});
  final double? height;
  final double? width;
  final bool isLight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: SvgPicture.asset(
        isLight ? AppContants.logoLight : AppContants.logoDark,
        fit: BoxFit.fitHeight,
        package: AppContants.packageName,
      ),
    );
  }
}
