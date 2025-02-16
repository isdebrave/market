import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSvgPicture extends StatelessWidget {
  const CustomSvgPicture({
    required this.logo,
    required this.color,
    this.padding = 8,
    super.key,
  });

  final String logo;
  final Color color;
  final double padding;

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.all(padding),
        child: SvgPicture.asset(
          logo,
          colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
        ),
      );
}
