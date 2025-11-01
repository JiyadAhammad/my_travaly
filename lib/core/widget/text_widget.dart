import 'package:flutter/material.dart';

/// This [TextWidget] widget allows for nullable text values, accommodating scenarios where localization services may be null.
///
/// By permitting nullable input, we reduce the need to handle nullability each time we use the [Text] widget.
class TextWidget extends StatelessWidget {
  const TextWidget(
    this.text, {
    this.color,
    this.style,
    this.letterSpacing,
    this.locale,
    this.overflow,
    this.maxLines,
    this.fontSize,
    this.textAlign,
    this.strutStyle,
    this.textScaler,
    this.textDirection,
    this.semanticsLabel,
    this.selectionColor,
    this.textWidthBasis,
    this.fallbackWidget,
    this.softWrap = true,
    this.textHeightBehavior,
    this.margin = EdgeInsets.zero,
    this.fontWeight = FontWeight.w400,
    this.decoration,
    this.decorationStyle,

    super.key,
  });

  final Color? color;
  final String text;
  final bool softWrap;
  final int? maxLines;
  final Locale? locale;
  final double? fontSize;
  final TextStyle? style;
  final double? letterSpacing;
  final EdgeInsets margin;
  final TextAlign? textAlign;
  final FontWeight fontWeight;
  final Color? selectionColor;
  final TextScaler? textScaler;
  final TextOverflow? overflow;
  final String? semanticsLabel;
  final Widget? fallbackWidget;
  final StrutStyle? strutStyle;
  final TextDirection? textDirection;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  final TextDecoration? decoration;
  final TextDecorationStyle? decorationStyle;

  @override
  Widget build(BuildContext context) {
    final TextStyle style =
        this.style ??
        TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          letterSpacing: letterSpacing,
          decoration: decoration,
          decorationStyle: decorationStyle,
        );

    return Padding(
      padding: margin,
      child: Text(
        text,
        style: style,

        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        maxLines: maxLines,
        textAlign: textAlign,
        strutStyle: strutStyle,
        textScaler: textScaler,
        textDirection: textDirection,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        selectionColor: selectionColor,
        textHeightBehavior: textHeightBehavior,
      ),
    );
  }
}
