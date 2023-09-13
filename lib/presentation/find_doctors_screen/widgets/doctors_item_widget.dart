import 'package:flutter/material.dart';
import 'package:helthio_app/core/app_export.dart';

// ignore: must_be_immutable
class DoctorsItemWidget extends StatelessWidget {
  DoctorsItemWidget({
    Key? key,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getHorizontalSize(64),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse8864x64,
            height: getSize(64),
            width: getSize(64),
            radius: BorderRadius.circular(
              getHorizontalSize(32),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 9,
            ),
            child: Text(
              "lbl_dr_marcus".tr,
              style: CustomTextStyles.labelLargeBluegray80001,
            ),
          ),
        ],
      ),
    );
  }
}
