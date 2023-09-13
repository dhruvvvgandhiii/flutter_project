import 'package:flutter/material.dart';
import 'package:helthio_app/core/app_export.dart';

// ignore: must_be_immutable
class TopDoctorItemWidget extends StatelessWidget {
  TopDoctorItemWidget({
    Key? key,
    this.onTapDoctor,
  }) : super(
          key: key,
        );

  VoidCallback? onTapDoctor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapDoctor?.call();
      },
      child: Container(
        padding: getPadding(
          top: 7,
          bottom: 7,
        ),
        decoration: AppDecoration.outlineGray200.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle959,
              height: getSize(111),
              width: getSize(111),
              radius: BorderRadius.circular(
                getHorizontalSize(8),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 5,
                bottom: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "msg_dr_marcus_horizon2".tr,
                    style: CustomTextStyles.titleMedium18,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 10,
                    ),
                    child: Text(
                      "lbl_chardiologist".tr,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 9,
                    ),
                    child: Row(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgStar,
                          height: getSize(16),
                          width: getSize(16),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 4,
                          ),
                          child: Text(
                            "lbl_4_7".tr,
                            style: CustomTextStyles.labelLargeAmber500_1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 9,
                    ),
                    child: Row(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgLocation,
                          height: getSize(13),
                          width: getSize(13),
                          margin: getMargin(
                            bottom: 1,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 3,
                          ),
                          child: Text(
                            "lbl_800m_away".tr,
                            style: theme.textTheme.labelLarge,
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
      ),
    );
  }
}
