import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Color backgroundColor;
  final Widget child;
  final double? width;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final double? borderRadius;
  const CustomContainer(
      {required this.child,
      required this.backgroundColor,
      this.width,
      this.margin,
      this.padding,
      this.borderRadius,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width ?? MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRadius ?? 10)),
        padding: padding,
        margin: margin,
        child: child);
  }
}
