import 'package:flutter/material.dart';
import 'package:helthio_app/core/app_export.dart';

// ignore: must_be_immutable
class FindDoctorsItemWidget extends StatelessWidget {
  FindDoctorsItemWidget({
    Key? key,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: getVerticalSize(56),
          width: getHorizontalSize(64),
          padding: getPadding(
            left: 16,
            top: 12,
            right: 16,
            bottom: 12,
          ),
          decoration: AppDecoration.outlineBlack.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder6,
          ),
          child: CustomImageView(
            svgPath: ImageConstant.imgUserPrimary,
            height: getSize(32),
            width: getSize(32),
            alignment: Alignment.center,
          ),
        ),
        Padding(
          padding: getPadding(
            top: 9,
          ),
          child: Text(
            "lbl_general".tr,
            style: theme.textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }
}
