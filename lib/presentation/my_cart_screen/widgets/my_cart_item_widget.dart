import 'package:flutter/material.dart';
import 'package:helthio_app/core/app_export.dart';

// ignore: must_be_immutable
class MyCartItemWidget extends StatelessWidget {
  MyCartItemWidget({
    Key? key,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 14,
      ),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgHealthvitllys50x50,
            height: getSize(50),
            width: getSize(50),
            radius: BorderRadius.circular(
              getHorizontalSize(25),
            ),
            margin: getMargin(
              left: 27,
              top: 20,
              bottom: 21,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 2,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_obh_combi".tr,
                          style: CustomTextStyles.titleMediumInter,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 3,
                          ),
                          child: Text(
                            "lbl_75ml".tr,
                            style: CustomTextStyles.labelLargeInter,
                          ),
                        ),
                      ],
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgTrashGray500,
                      height: getSize(18),
                      width: getSize(18),
                      margin: getMargin(
                        left: 67,
                        bottom: 21,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: getPadding(
                    top: 25,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgCarGray500,
                        height: getSize(18),
                        width: getSize(18),
                        margin: getMargin(
                          top: 1,
                          bottom: 2,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 10,
                          bottom: 2,
                        ),
                        child: Text(
                          "lbl_1".tr,
                          style: CustomTextStyles.titleMediumInter_1,
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgPlus,
                        height: getSize(18),
                        width: getSize(18),
                        margin: getMargin(
                          left: 13,
                          top: 1,
                          bottom: 2,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 68,
                        ),
                        child: Text(
                          "lbl_9_99".tr,
                          style: CustomTextStyles.titleMediumInter,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
