import 'package:flutter/material.dart';
import 'package:g365_widgets_user/src/responsiveness/responsive.dart';

class ContainerWithShadow extends StatelessWidget {
  const ContainerWithShadow({super.key, required this.child, this.width = 500});

  final Widget child;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Responsive.isMobile(context) ? MediaQuery.of(context).size.width - 40 : width,
      padding: const EdgeInsets.all(48),
      margin: EdgeInsets.symmetric(horizontal: Responsive.isMobile(context) ? 20 : 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
        boxShadow: const [BoxShadow(color: Color(0x19000000), blurRadius: 30, offset: Offset(0, 0), spreadRadius: 10)],
      ),
      child: child,
    );
  }
}
