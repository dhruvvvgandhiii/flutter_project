import 'package:flutter/material.dart';
import 'package:helthio_app/core/app_export.dart';
import 'package:helthio_app/widgets/app_bar/appbar_image.dart';
import 'package:helthio_app/widgets/app_bar/appbar_image_1.dart';
import 'package:helthio_app/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:helthio_app/widgets/app_bar/custom_app_bar.dart';
import 'package:helthio_app/widgets/custom_elevated_button.dart';
import 'package:helthio_app/widgets/custom_icon_button.dart';
import 'package:helthio_app/widgets/custom_rating_bar.dart';
import 'package:readmore/readmore.dart';

import 'bloc/drugs_detail_bloc.dart';

class DrugsDetailScreen extends StatelessWidget {
  const DrugsDetailScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DrugsDetailBloc>(
        create: (context) =>
            DrugsDetailBloc(DrugsDetailState())..add(DrugsDetailInitialEvent()),
        child: DrugsDetailScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<DrugsDetailBloc, DrugsDetailState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.whiteA700,
              appBar: CustomAppBar(
                  leadingWidth: getHorizontalSize(64),
                  leading: AppbarImage(
                      svgPath: ImageConstant.imgArrowleft,
                      margin: getMargin(left: 24),
                      onTap: () {
                        onTapArrowleftone(context);
                      }),
                  centerTitle: true,
                  title: AppbarSubtitle1(text: "lbl_details".tr),
                  actions: [
                    AppbarImage1(
                        svgPath: ImageConstant.imgCart,
                        margin:
                            getMargin(left: 24, top: 9, right: 24, bottom: 7))
                  ]),
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 20, right: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgHealthvitllys163x163,
                            height: getSize(163),
                            width: getSize(163),
                            radius:
                                BorderRadius.circular(getHorizontalSize(81)),
                            alignment: Alignment.center),
                        Padding(
                            padding: getPadding(top: 59),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("lbl_obh_combi".tr,
                                            style: theme.textTheme.titleLarge),
                                        Padding(
                                            padding: getPadding(top: 9),
                                            child: Text("lbl_75ml".tr,
                                                style: CustomTextStyles
                                                    .titleMediumGray500))
                                      ]),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgFavorite,
                                      height: getSize(24),
                                      width: getSize(24),
                                      margin: getMargin(top: 27))
                                ])),
                        CustomRatingBar(
                            margin: getMargin(top: 10), initialRating: 0),
                        Padding(
                            padding: getPadding(top: 28, right: 6),
                            child: Row(children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgCarGray500,
                                  height: getSize(32),
                                  width: getSize(32)),
                              Padding(
                                  padding: getPadding(left: 23, top: 2),
                                  child: Text("lbl_1".tr,
                                      style: theme.textTheme.headlineSmall)),
                              CustomImageView(
                                  svgPath: ImageConstant.imgPlus,
                                  height: getSize(32),
                                  width: getSize(32),
                                  margin: getMargin(left: 28)),
                              Spacer(),
                              Text("lbl_9_99".tr,
                                  style: theme.textTheme.headlineMedium)
                            ])),
                        Padding(
                            padding: getPadding(top: 40),
                            child: Text("lbl_description".tr,
                                style: theme.textTheme.titleMedium)),
                        Container(
                            width: getHorizontalSize(328),
                            margin: getMargin(top: 10, bottom: 5),
                            child: ReadMoreText("msg_obh_combi_is_a".tr,
                                trimLines: 4,
                                colorClickableText: theme.colorScheme.primary,
                                trimMode: TrimMode.Line,
                                trimCollapsedText: "lbl_read_more".tr,
                                moreStyle: CustomTextStyles
                                    .bodySmallInterOnError
                                    .copyWith(height: 1.67),
                                lessStyle: CustomTextStyles
                                    .bodySmallInterOnError
                                    .copyWith(height: 1.67)))
                      ])),
              bottomNavigationBar: Padding(
                  padding: getPadding(left: 20, right: 20, bottom: 28),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomIconButton(
                            height: getSize(50),
                            width: getSize(50),
                            padding: getPadding(all: 13),
                            decoration: IconButtonStyleHelper.fillBlueTL8,
                            child: CustomImageView(
                                svgPath: ImageConstant.imgCartPrimary)),
                        Expanded(
                            child: CustomElevatedButton(
                                text: "lbl_buy_now".tr,
                                margin: getMargin(left: 19),
                                buttonTextStyle:
                                    CustomTextStyles.titleSmallWhiteA700))
                      ]))));
    });
  }

  /// Navigates to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is
  /// used to build the navigation stack. When the action is triggered, this
  /// function uses the [NavigatorService] to navigate to the previous screen
  /// in the navigation stack.
  onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}
