import 'package:flutter/material.dart';
import 'package:helthio_app/core/app_export.dart';

// ignore: must_be_immutable
class RelatedArticlesItemWidget extends StatelessWidget {
  RelatedArticlesItemWidget({
    Key? key,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 5,
      ),
      decoration: AppDecoration.outlineBluegray50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUnsplash86rvjm9zowy,
            height: getSize(59),
            width: getSize(59),
            radius: BorderRadius.circular(
              getHorizontalSize(8),
            ),
            margin: getMargin(
              bottom: 1,
            ),
          ),
          Expanded(
            child: Padding(
              padding: getPadding(
                left: 12,
                top: 5,
                bottom: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "msg_the_25_healthiest".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.labelLargeGray900.copyWith(
                      height: 1.33,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 3,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "lbl_jun_10_20212".tr,
                          style: CustomTextStyles.labelSmallGray500,
                        ),
                        Container(
                          height: getSize(2),
                          width: getSize(2),
                          margin: getMargin(
                            left: 7,
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
                            "lbl_5min_read2".tr,
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
          CustomImageView(
            svgPath: ImageConstant.imgBookmark12x10,
            height: getVerticalSize(12),
            width: getHorizontalSize(10),
            margin: getMargin(
              left: 27,
              top: 8,
              bottom: 39,
            ),
          ),
        ],
      ),
    );
  }
}
