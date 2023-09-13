import 'package:flutter/material.dart';
import 'package:helthio_app/core/app_export.dart';

// ignore: must_be_immutable
class ProfileItemWidget extends StatelessWidget {
  ProfileItemWidget({
    Key? key,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getHorizontalSize(61),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgLocationWhiteA700,
            height: getSize(32),
            width: getSize(32),
          ),
          Padding(
            padding: getPadding(
              top: 5,
            ),
            child: Text(
              "lbl_heart_rate".tr,
              style: CustomTextStyles.labelMediumCyan100,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 3,
            ),
            child: Text(
              "lbl_215bpm".tr,
              style: CustomTextStyles.titleMediumWhiteA700,
            ),
          ),
        ],
      ),
    );
  }
}
