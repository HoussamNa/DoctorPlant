import 'package:flutter/material.dart';
import 'package:nasir_s_doctorplant_app/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
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

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  borderRadius: BorderRadius.circular(18.h),
                  boxShadow: [
                    BoxShadow(
                      color: theme.colorScheme.errorContainer.withOpacity(0.15),
                      spreadRadius: 2.h,
                      blurRadius: 2.h,
                      offset: Offset(
                        0,
                        10,
                      ),
                    ),
                  ],
                  gradient: LinearGradient(
                    begin: Alignment(0.5, 0),
                    end: Alignment(0.5, 1),
                    colors: [
                      appTheme.lightGreen100,
                      appTheme.lightGreen800,
                    ],
                  ),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get gradientLightGreenToLightGreen => BoxDecoration(
        borderRadius: BorderRadius.circular(18.h),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.errorContainer.withOpacity(0.15),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              27,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.lightGreen100,
            appTheme.lightGreen800,
          ],
        ),
      );
  static BoxDecoration get gradientLightGreenToGreen => BoxDecoration(
        borderRadius: BorderRadius.circular(18.h),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.errorContainer.withOpacity(0.15),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              10,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.lightGreen100,
            appTheme.green400,
          ],
        ),
      );
}
