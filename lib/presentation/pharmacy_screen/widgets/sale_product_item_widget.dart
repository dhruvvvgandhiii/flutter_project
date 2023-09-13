import 'package:flutter/material.dart';
import 'package:helthio_app/core/app_export.dart';

// ignore: must_be_immutable
class SaleProductItemWidget extends StatelessWidget {
  SaleProductItemWidget({
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
              top: 8,
              right: 7,
              bottom: 8,
            ),
            decoration: AppDecoration.outlineBluegray50.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCalciumllysin,
                  height: getVerticalSize(68),
                  width: getHorizontalSize(66),
                  radius: BorderRadius.circular(
                    getHorizontalSize(34),
                  ),
                  alignment: Alignment.center,
                  margin: getMargin(
                    top: 10,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 10,
                  ),
                  child: Text(
                    "lbl_obh_combi".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 7,
                  ),
                  child: Text(
                    "lbl_75ml".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 2,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        height: getVerticalSize(17),
                        width: getHorizontalSize(74),
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: getHorizontalSize(71),
                                margin: getMargin(
                                  right: 3,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "lbl_9_99".tr,
                                      style:
                                          CustomTextStyles.titleSmallBlack900,
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 3,
                                        bottom: 3,
                                      ),
                                      child: Text(
                                        "lbl_10_99".tr,
                                        style: CustomTextStyles
                                            .labelSmallGray500SemiBold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                height: getVerticalSize(1),
                                width: getHorizontalSize(29),
                                margin: getMargin(
                                  bottom: 6,
                                ),
                                decoration: BoxDecoration(
                                  color: appTheme.gray700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgPlus,
                        height: getSize(18),
                        width: getSize(18),
                        margin: getMargin(
                          left: 10,
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
