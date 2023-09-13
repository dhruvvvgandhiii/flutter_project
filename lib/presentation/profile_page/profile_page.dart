import 'package:flutter/material.dart';
import 'package:helthio_app/core/app_export.dart';
import 'package:helthio_app/widgets/custom_icon_button.dart';

import '../profile_page/widgets/profile_item_widget.dart';
import 'bloc/profile_bloc.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (context) =>
          ProfileBloc(ProfileState())..add(ProfileInitialEvent()),
      child: ProfilePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0, 0),
              end: Alignment(1, 0.43),
              colors: [
                theme.colorScheme.secondaryContainer,
                appTheme.blue700,
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.gradientSecondaryContainerToBlue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgComponent1WhiteA700,
                  height: getVerticalSize(16),
                  width: getHorizontalSize(4),
                  alignment: Alignment.centerRight,
                  margin: getMargin(
                    top: 25,
                    right: 20,
                  ),
                ),
                Container(
                  height: getVerticalSize(82),
                  width: getHorizontalSize(81),
                  margin: getMargin(
                    top: 3,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse27,
                        height: getSize(80),
                        width: getSize(80),
                        radius: BorderRadius.circular(
                          getHorizontalSize(40),
                        ),
                        alignment: Alignment.center,
                      ),
                      CustomIconButton(
                        height: getSize(24),
                        width: getSize(24),
                        padding: getPadding(
                          all: 4,
                        ),
                        decoration: IconButtonStyleHelper.fillWhiteA,
                        alignment: Alignment.bottomRight,
                        child: CustomImageView(
                          svgPath: ImageConstant.imgCamera,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 16,
                  ),
                  child: Text(
                    "lbl_amelia_renata".tr,
                    style: CustomTextStyles.titleMediumWhiteA70018,
                  ),
                ),
                SizedBox(
                  height: getVerticalSize(102),
                  child: BlocBuilder<ProfileBloc, ProfileState>(
                    builder: (context, profileModelObj) {
                      return ListView.separated(
                        padding: getPadding(
                          left: 44,
                          top: 30,
                          right: 44,
                        ),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (
                          context,
                          index,
                        ) {
                          return Padding(
                            padding: getPadding(
                              left: 31.5,
                              right: 31.5,
                            ),
                            child: SizedBox(
                              height: getVerticalSize(44),
                              child: VerticalDivider(
                                width: getHorizontalSize(1),
                                thickness: getVerticalSize(1),
                                color: appTheme.cyan100,
                              ),
                            ),
                          );
                        },
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return ProfileItemWidget();
                        },
                      );
                    },
                  ),
                ),
                Container(
                  margin: getMargin(
                    top: 28.5,
                  ),
                  padding: getPadding(
                    left: 20,
                    top: 21,
                    right: 20,
                    bottom: 21,
                  ),
                  decoration: AppDecoration.fillWhiteA.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL30,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomIconButton(
                            height: getSize(43),
                            width: getSize(43),
                            padding: getPadding(
                              all: 9,
                            ),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgLocationPrimary,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 18,
                              top: 13,
                              bottom: 10,
                            ),
                            child: Text(
                              "lbl_my_saved".tr,
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                          Spacer(),
                          CustomImageView(
                            svgPath: ImageConstant.imgArrowright,
                            height: getSize(24),
                            width: getSize(24),
                            margin: getMargin(
                              top: 10,
                              bottom: 9,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: getPadding(
                          top: 13,
                        ),
                        child: Divider(),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 13,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomIconButton(
                              height: getSize(43),
                              width: getSize(43),
                              padding: getPadding(
                                all: 9,
                              ),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgMenu,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 18,
                                top: 13,
                                bottom: 10,
                              ),
                              child: Text(
                                "lbl_appointmnet".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                            Spacer(),
                            CustomImageView(
                              svgPath: ImageConstant.imgArrowright,
                              height: getSize(24),
                              width: getSize(24),
                              margin: getMargin(
                                top: 10,
                                bottom: 9,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 13,
                        ),
                        child: Divider(),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 13,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomIconButton(
                              height: getSize(43),
                              width: getSize(43),
                              padding: getPadding(
                                all: 9,
                              ),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgClock,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 18,
                                top: 13,
                                bottom: 10,
                              ),
                              child: Text(
                                "lbl_payment_method".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                            Spacer(),
                            CustomImageView(
                              svgPath: ImageConstant.imgArrowright,
                              height: getSize(24),
                              width: getSize(24),
                              margin: getMargin(
                                top: 9,
                                bottom: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 13,
                        ),
                        child: Divider(),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 13,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomIconButton(
                              height: getSize(43),
                              width: getSize(43),
                              padding: getPadding(
                                all: 9,
                              ),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgClockPrimary,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 18,
                                top: 11,
                                bottom: 12,
                              ),
                              child: Text(
                                "lbl_faqs".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                            Spacer(),
                            CustomImageView(
                              svgPath: ImageConstant.imgArrowright,
                              height: getSize(24),
                              width: getSize(24),
                              margin: getMargin(
                                top: 10,
                                bottom: 9,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 13,
                        ),
                        child: Divider(),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 13,
                          bottom: 74,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomIconButton(
                              height: getSize(43),
                              width: getSize(43),
                              padding: getPadding(
                                all: 9,
                              ),
                              decoration: IconButtonStyleHelper.fillRed,
                              child: CustomImageView(
                                svgPath: ImageConstant.imgIcroundlogout,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 18,
                                top: 13,
                                bottom: 10,
                              ),
                              child: Text(
                                "lbl_logout".tr,
                                style: CustomTextStyles.titleMediumRedA200,
                              ),
                            ),
                            Spacer(),
                            CustomImageView(
                              svgPath: ImageConstant.imgArrowright,
                              height: getSize(24),
                              width: getSize(24),
                              margin: getMargin(
                                top: 10,
                                bottom: 9,
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
        ),
      ),
    );
  }
}
