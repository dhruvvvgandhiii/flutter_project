import 'package:flutter/material.dart';
import 'package:helthio_app/core/app_export.dart';
import 'package:helthio_app/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class SliderViewItemWidget extends StatelessWidget {
  SliderViewItemWidget({
    Key? key,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Container(
        height: getVerticalSize(135),
        padding: getPadding(
          left: 3,
          right: 3,
        ),
        decoration: AppDecoration.linear.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                height: getVerticalSize(130),
                width: getHorizontalSize(103),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Opacity(
                      opacity: 0.5,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: getVerticalSize(113),
                          width: getHorizontalSize(103),
                          margin: getMargin(
                            bottom: 1,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(56),
                            ),
                            border: Border.all(
                              color: appTheme.whiteA700.withOpacity(0.53),
                              width: getHorizontalSize(18),
                            ),
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.img7xm6,
                      height: getVerticalSize(130),
                      width: getHorizontalSize(83),
                      radius: BorderRadius.circular(
                        getHorizontalSize(10),
                      ),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: getPadding(
                  left: 9,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "msg_early_protection".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleMediumWhiteA70018.copyWith(
                        height: 1.39,
                      ),
                    ),
                    CustomElevatedButton(
                      height: getVerticalSize(30),
                      text: "lbl_learn_more".tr,
                      margin: getMargin(
                        top: 13,
                        right: 74,
                      ),
                      buttonStyle: CustomButtonStyles.fillWhiteA,
                      buttonTextStyle: CustomTextStyles.labelLargePrimary,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
