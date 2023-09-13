import 'package:flutter/material.dart';
import 'package:helthio_app/core/app_export.dart';

// ignore: must_be_immutable
class DoctorSpecialityItemWidget extends StatelessWidget {
  DoctorSpecialityItemWidget({
    Key? key,
  }) : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: getVerticalSize(56),
            width: getHorizontalSize(64),
            padding: getPadding(
              left: 17,
              top: 8,
              right: 17,
              bottom: 8,
            ),
            decoration: AppDecoration.fillBlue.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.img617717311,
              height: getVerticalSize(40),
              width: getHorizontalSize(30),
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 10,
            ),
            child: Text(
              "lbl_orthopaedics".tr,
              style: CustomTextStyles.labelLargeGray800,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
