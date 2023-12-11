import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final double? height;
  final double? width;
  final String? text;
  final Color? color;
  final Color? textColor;
  final VoidCallback? onPressed;
  final double? radius;
  final double? fontSize;
  final FontWeight? fontWeight;

  const AppButton(
      {super.key,
      this.height,
      this.width,
      this.text,
      this.color,
      this.textColor,
      this.onPressed,
      this.radius,
      this.fontSize,
      this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width ?? MediaQuery.of(context).size.width,
        height: height ?? 50,
        decoration: BoxDecoration(
          color: color ?? Colors.blue,
          borderRadius: BorderRadius.all(
            Radius.circular(radius ?? 10),
          ),
        ),
        child: Center(
          child: Text(
            text ?? 'Button',
            style: TextStyle(
              color: textColor ?? Colors.white,
              fontSize: fontSize ?? 20,
              fontWeight: fontWeight ?? FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
