import 'package:flutter/material.dart';
import 'package:helthio_app/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.margin,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final EdgeInsetsGeometry? margin;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => Padding(
        padding: margin ?? EdgeInsets.zero,
        child: SizedBox(
          height: height ?? 0,
          width: width ?? 0,
          child: IconButton(
            padding: EdgeInsets.zero,
            icon: Container(
              padding: padding ?? EdgeInsets.zero,
              decoration: decoration ??
                  BoxDecoration(
                    color: appTheme.blue50,
                    borderRadius:
                        BorderRadius.circular(getHorizontalSize(21.00)),
                  ),
              child: child,
            ),
            onPressed: onTap,
          ),
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue5002,
        borderRadius: BorderRadius.circular(getHorizontalSize(8.00)),
      );
  static BoxDecoration get fillBlueTL18 => BoxDecoration(
        color: appTheme.blue50,
        borderRadius: BorderRadius.circular(getHorizontalSize(18.00)),
      );
  static BoxDecoration get fillBlueTL8 => BoxDecoration(
        color: appTheme.blue50,
        borderRadius: BorderRadius.circular(getHorizontalSize(8.00)),
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(getHorizontalSize(12.00)),
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red50,
        borderRadius: BorderRadius.circular(getHorizontalSize(21.00)),
      );
}
