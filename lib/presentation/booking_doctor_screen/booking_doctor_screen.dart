import 'package:flutter/material.dart';
import 'package:helthio_app/core/app_export.dart';
import 'package:helthio_app/widgets/app_bar/appbar_image.dart';
import 'package:helthio_app/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:helthio_app/widgets/app_bar/custom_app_bar.dart';
import 'package:helthio_app/widgets/custom_elevated_button.dart';
import 'package:helthio_app/widgets/custom_icon_button.dart';

import 'bloc/booking_doctor_bloc.dart';

class BookingDoctorScreen extends StatelessWidget {
  const BookingDoctorScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<BookingDoctorBloc>(
        create: (context) => BookingDoctorBloc(BookingDoctorState())
          ..add(BookingDoctorInitialEvent()),
        child: BookingDoctorScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: getHorizontalSize(64),
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle1(text: "lbl_appointment".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 28, right: 24, bottom: 28),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 8, top: 4, right: 30),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle959,
                                height: getSize(115),
                                width: getSize(115),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(8))),
                            Padding(
                                padding:
                                    getPadding(left: 15, top: 7, bottom: 7),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("msg_dr_marcus_horizon".tr,
                                          style:
                                              CustomTextStyles.titleMedium18),
                                      Padding(
                                          padding: getPadding(top: 9),
                                          child: Text("lbl_chardiologist".tr,
                                              style: CustomTextStyles
                                                  .titleSmallGray500)),
                                      Padding(
                                          padding: getPadding(top: 7),
                                          child: Row(children: [
                                            CustomImageView(
                                                svgPath: ImageConstant.imgStar,
                                                height: getSize(18),
                                                width: getSize(18),
                                                margin: getMargin(bottom: 1)),
                                            Padding(
                                                padding:
                                                    getPadding(left: 4, top: 3),
                                                child: Text("lbl_4_7".tr,
                                                    style: CustomTextStyles
                                                        .labelLargeAmber500))
                                          ])),
                                      Padding(
                                          padding: getPadding(top: 7),
                                          child: Row(children: [
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgLocation,
                                                height: getSize(16),
                                                width: getSize(16),
                                                margin: getMargin(bottom: 1)),
                                            Padding(
                                                padding: getPadding(left: 4),
                                                child: Text("lbl_800m_away".tr,
                                                    style: CustomTextStyles
                                                        .titleSmallGray500))
                                          ]))
                                    ]))
                          ])),
                      Padding(
                          padding: getPadding(top: 31),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("lbl_date".tr,
                                        style: theme.textTheme.titleMedium)),
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: Text("lbl_change".tr,
                                        style:
                                            CustomTextStyles.bodyMediumPrimary))
                              ])),
                      Padding(
                          padding: getPadding(top: 9, right: 42),
                          child: Row(children: [
                            CustomIconButton(
                                height: getSize(36),
                                width: getSize(36),
                                padding: getPadding(all: 8),
                                decoration: IconButtonStyleHelper.fillBlueTL18,
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgCalendar)),
                            Padding(
                                padding:
                                    getPadding(left: 15, top: 10, bottom: 8),
                                child: Text("msg_wednesday_jun_23".tr,
                                    style: CustomTextStyles
                                        .titleSmallErrorContainer))
                          ])),
                      Padding(
                          padding: getPadding(top: 15),
                          child: Divider(color: appTheme.gray100)),
                      Padding(
                          padding: getPadding(top: 14),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("lbl_reason".tr,
                                        style: theme.textTheme.titleMedium)),
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: Text("lbl_change".tr,
                                        style:
                                            CustomTextStyles.bodyMediumPrimary))
                              ])),
                      Padding(
                          padding: getPadding(top: 9, right: 42),
                          child: Row(children: [
                            CustomIconButton(
                                height: getSize(36),
                                width: getSize(36),
                                padding: getPadding(all: 8),
                                decoration: IconButtonStyleHelper.fillBlueTL18,
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgShare)),
                            Padding(
                                padding:
                                    getPadding(left: 15, top: 10, bottom: 8),
                                child: Text("lbl_chest_pain".tr,
                                    style: CustomTextStyles
                                        .titleSmallErrorContainer))
                          ])),
                      Padding(
                          padding: getPadding(top: 15),
                          child: Divider(color: appTheme.gray100)),
                      Padding(
                          padding: getPadding(top: 16),
                          child: Text("lbl_payment_detail".tr,
                              style: theme.textTheme.titleMedium)),
                      Padding(
                          padding: getPadding(top: 12),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_consultation".tr,
                                    style: CustomTextStyles.bodyMedium14),
                                Text("lbl_60_00".tr,
                                    style: CustomTextStyles.bodyMediumGray900)
                              ])),
                      Padding(
                          padding: getPadding(top: 11),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_admin_fee".tr,
                                    style: CustomTextStyles.bodyMedium14),
                                Text("lbl_01_00".tr,
                                    style: CustomTextStyles.bodyMediumGray900)
                              ])),
                      Padding(
                          padding: getPadding(top: 11),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("msg_aditional_discount".tr,
                                        style: CustomTextStyles.bodyMedium14)),
                                Text("lbl".tr,
                                    style: CustomTextStyles
                                        .bodyMediumErrorContainer)
                              ])),
                      Padding(
                          padding: getPadding(top: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_total".tr,
                                    style: theme.textTheme.titleSmall),
                                Text("lbl_61_00".tr,
                                    style: CustomTextStyles.titleSmallPrimary_1)
                              ])),
                      Padding(
                          padding: getPadding(top: 15),
                          child: Divider(
                              color: appTheme.gray100,
                              endIndent: getHorizontalSize(8))),
                      Padding(
                          padding: getPadding(top: 17),
                          child: Text("lbl_payment_method".tr,
                              style: theme.textTheme.titleMedium)),
                      Container(
                          margin: getMargin(top: 13),
                          padding: getPadding(all: 14),
                          decoration: AppDecoration.outlineBlueGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(left: 8),
                                    child: Text("lbl_visa".tr,
                                        style: CustomTextStyles
                                            .titleMediumInterPrimaryContainer)),
                                Padding(
                                    padding: getPadding(top: 3, bottom: 2),
                                    child: Text("lbl_change".tr,
                                        style:
                                            CustomTextStyles.bodySmallPrimary))
                              ]))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 20, right: 20, bottom: 26),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(top: 3, bottom: 5),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("lbl_total".tr,
                                    style:
                                        CustomTextStyles.titleSmallBluegray300),
                                Padding(
                                    padding: getPadding(top: 2),
                                    child: Text("lbl_61_002".tr,
                                        style: CustomTextStyles.titleMedium18))
                              ])),
                      CustomElevatedButton(
                          width: getHorizontalSize(192),
                          text: "lbl_book_now".tr,
                          buttonTextStyle: CustomTextStyles.titleSmallWhiteA700)
                    ]))));
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
