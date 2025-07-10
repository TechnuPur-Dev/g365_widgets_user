import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:g365_widgets_user/constants.dart';

class SigninBackground extends StatelessWidget {
  const SigninBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(color: Colors.white),
        ),
        Positioned.fill(
          left: 0,
          top: 0,
          child: Column(
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/svg/global_light_background.svg",
                    height: 550,
                    package: AppContants.packageName,
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned.fill(
          right: 0,
          bottom: 0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SvgPicture.asset(
                    "assets/svg/global_light_background_right.svg",
                    height: 550,
                    package: AppContants.packageName,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
