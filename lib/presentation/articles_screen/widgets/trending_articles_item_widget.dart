import 'package:flutter/material.dart';
import 'package:helthio_app/core/app_export.dart';

// ignore: must_be_immutable
class TrendingArticlesItemWidget extends StatelessWidget {
  TrendingArticlesItemWidget({
    Key? key,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getHorizontalSize(154),
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: getPadding(
            left: 8,
            top: 8,
            right: 8,
            bottom: 8,
          ),
          decoration: AppDecoration.outlineBluegray50.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: getVerticalSize(87),
                width: getHorizontalSize(138),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle460,
                      height: getVerticalSize(87),
                      width: getHorizontalSize(138),
                      radius: BorderRadius.circular(
                        getHorizontalSize(8),
                      ),
                      alignment: Alignment.center,
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgBookmarkWhiteA700,
                      height: getSize(15),
                      width: getSize(15),
                      alignment: Alignment.topRight,
                      margin: getMargin(
                        top: 5,
                        right: 7,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: getMargin(
                  top: 10,
                ),
                padding: getPadding(
                  left: 5,
                  top: 1,
                  right: 5,
                  bottom: 1,
                ),
                decoration: AppDecoration.fillBlueGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder2,
                ),
                child: Text(
                  "lbl_covid_19".tr,
                  style: theme.textTheme.labelSmall,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 5,
                ),
                child: Text(
                  "msg_comparing_the_astrazeneca".tr,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.labelLargeGray900.copyWith(
                    height: 1.33,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 6,
                ),
                child: Row(
                  children: [
                    Text(
                      "lbl_jun_12_2021".tr,
                      style: CustomTextStyles.labelSmallGray500,
                    ),
                    Container(
                      height: getSize(2),
                      width: getSize(2),
                      margin: getMargin(
                        left: 9,
                        top: 4,
                        bottom: 4,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.gray500,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(1),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 4,
                      ),
                      child: Text(
                        "lbl_6_min_read".tr,
                        style: theme.textTheme.labelSmall,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
