import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:paxpass_app/configs/fonts.gen.dart';
import 'package:paxpass_app/core/enums/app_font_weight.dart';
import 'package:paxpass_app/core/extension/font_weight_extension.dart';

class TitleText extends StatelessWidget {
  final String text;
  final Color? color;
  final TextOverflow? overflow;
  final int? maxLines;
  final TextDecoration? decoration;
  final AppFontWeight? fontWeight;
  final double? fontSize;
  final double? letterSpacing;
  final TextAlign? textAlign;
  final TextStyle? textStyle;
  final String? fontFamily;

  const TitleText({
    super.key,
    required this.text,
    this.color,
    this.overflow,
    this.maxLines,
    this.decoration,
    this.fontWeight,
    this.fontSize,
    this.textAlign,
    this.textStyle,
    this.letterSpacing,
    this.fontFamily,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          textStyle ??
          TextStyle(
            fontSize: fontSize ?? 32.sp,
            fontWeight: fontWeight == null ? AppFontWeight.bold.fontWeight() : fontWeight!.fontWeight(),
            decoration: decoration,
            color: color ?? Colors.black,
            fontFamily: fontFamily ?? FontFamily.publicSans,
            letterSpacing: letterSpacing,
          ),
      textAlign: textAlign,
      maxLines: maxLines ?? 3,
      overflow: overflow ?? TextOverflow.ellipsis,
    );
  }
}

class NormalText extends StatelessWidget {
  final String text;
  final Color? color;
  final TextOverflow? overflow;
  final int? maxLines;
  final TextDecoration? decoration;
  final AppFontWeight? fontWeight;
  final double? fontSize;
  final TextAlign? textAlign;
  final FontStyle? fontStyle;
  final String? fontFamily;
  final double? height;

  const NormalText({
    super.key,
    required this.text,
    this.color,
    this.overflow,
    this.maxLines,
    this.decoration,
    this.fontWeight,
    this.fontSize,
    this.textAlign,
    this.fontStyle,
    this.fontFamily,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize ?? 16.sp,
        fontWeight: fontWeight == null ? AppFontWeight.regular.fontWeight() : fontWeight!.fontWeight(),
        decoration: decoration,
        color: color,
        fontFamily: fontFamily ?? FontFamily.publicSans,
        decorationColor: color,
        fontStyle: fontStyle,
        height: height??1.43
      ),
      textAlign: textAlign,
      maxLines: maxLines ?? 4,
      overflow: overflow ?? TextOverflow.ellipsis,
    );
  }
}
