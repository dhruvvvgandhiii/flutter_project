import 'package:flutter/material.dart';
import 'package:helthio_app/core/app_export.dart';

// ignore: must_be_immutable
class PopularProductItemWidget extends StatelessWidget {
  PopularProductItemWidget({
    Key? key,
    this.onTapDrugs,
  }) : super(
          key: key,
        );

  VoidCallback? onTapDrugs;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getHorizontalSize(118),
      child: Align(
        alignment: Alignment.centerRight,
        child: GestureDetector(
          onTap: () {
            onTapDrugs?.call();
          },
          child: Container(
            padding: getPadding(
              left: 7,
              top: 10,
              right: 7,
              bottom: 10,
            ),
            decoration: AppDecoration.outlineBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEf58faa9a71e47e,
                  height: getVerticalSize(58),
                  width: getHorizontalSize(56),
                  radius: BorderRadius.circular(
                    getHorizontalSize(29),
                  ),
                  alignment: Alignment.center,
                  margin: getMargin(
                    top: 11,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 1,
                    top: 14,
                  ),
                  child: Text(
                    "lbl_panadol".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 1,
                    top: 8,
                  ),
                  child: Text(
                    "lbl_20pcs".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 1,
                    top: 2,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "lbl_15_99".tr,
                        style: CustomTextStyles.titleSmallBlack900,
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgPlus,
                        height: getSize(18),
                        width: getSize(18),
                        margin: getMargin(
                          left: 42,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
