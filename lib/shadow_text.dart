library shadow_text;

import 'package:flutter/material.dart';

typedef ShadeBuilder = Widget Function(
    BuildContext context, String text, Color);

class ShadowText extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color shadowColor;
  final double xTans;
  final double yTans;
  final ShadeBuilder shadeBuilder;

  ShadowText(
      {this.text,
        this.textColor,
        this.shadowColor,
        this.xTans,
        this.yTans,
        this.shadeBuilder})
      : assert(text != null),
        assert(textColor != null),
        assert(shadowColor != null),
        assert(shadeBuilder != null);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        shadeBuilder(context, text, textColor),
        Transform(
          transform:
          Matrix4.translationValues(xTans ?? 10.0, yTans ?? 10.0, 0.0),
          child: shadeBuilder(context, text, shadowColor),
        ),
      ],
    );
  }
}
