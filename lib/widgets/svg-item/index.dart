import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgIcon extends StatelessWidget {
  @required
  final String assetsName;
  final String semanticLabel;
  final double width;
  final double height;
  const SvgIcon(
      {Key key,
      this.assetsName,
      this.semanticLabel,
      this.width: 50,
      this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "lib/assets/icons/$assetsName.svg",
      semanticsLabel: semanticLabel,
      width: width,
      height: height,
    );
  }
}
