import 'package:flutter/material.dart';
import 'package:helthio_app/core/app_export.dart';
import 'package:helthio_app/widgets/app_bar/appbar_image.dart';
import 'package:helthio_app/widgets/app_bar/appbar_image_1.dart';
import 'package:helthio_app/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:helthio_app/widgets/app_bar/custom_app_bar.dart';
import 'package:helthio_app/widgets/custom_elevated_button.dart';
import 'package:helthio_app/widgets/custom_icon_button.dart';
import 'package:readmore/readmore.dart';

import '../doctor_detail_screen/widgets/time_selection_item_widget.dart';
import 'bloc/doctor_detail_bloc.dart';

class DoctorDetailScreen extends StatelessWidget {
  const DoctorDetailScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DoctorDetailBloc>(
        create: (context) => DoctorDetailBloc(DoctorDetailState())
          ..add(DoctorDetailInitialEvent()),
        child: DoctorDetailScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
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
                title: AppbarSubtitle1(text: "lbl_doctor_detail".tr),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgComponent1,
                      margin:
                          getMargin(left: 24, top: 13, right: 24, bottom: 11))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 32, right: 24, bottom: 32),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(right: 38),
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
                          padding: getPadding(top: 17),
                          child: Text("lbl_about".tr,
                              style: theme.textTheme.titleMedium)),
                      Container(
                          width: getHorizontalSize(305),
                          margin: getMargin(top: 12),
                          child: ReadMoreText("msg_lorem_ipsum_dolor".tr,
                              trimLines: 3,
                              colorClickableText: theme.colorScheme.primary,
                              trimMode: TrimMode.Line,
                              trimCollapsedText: "lbl_read_more".tr,
                              moreStyle: CustomTextStyles
                                  .bodySmallInterGray60002
                                  .copyWith(height: 1.67),
                              lessStyle: CustomTextStyles
                                  .bodySmallInterGray60002
                                  .copyWith(height: 1.67))),
                      Padding(
                          padding: getPadding(top: 32),
                          child: Row(children: [
                            Container(
                                padding: getPadding(
                                    left: 12, top: 13, right: 12, bottom: 13),
                                decoration: AppDecoration.outlineBlueGray
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder15),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("lbl_mon".tr,
                                          style: theme.textTheme.bodySmall),
                                      Padding(
                                          padding: getPadding(top: 2),
                                          child: Text("lbl_21".tr,
                                              style: CustomTextStyles
                                                  .titleMedium18))
                                    ])),
                            Container(
                                margin: getMargin(left: 12),
                                padding: getPadding(
                                    left: 11, top: 13, right: 11, bottom: 13),
                                decoration: AppDecoration.outlineBlueGray
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder15),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                          padding: getPadding(left: 2),
                                          child: Text("lbl_tue".tr,
                                              style:
                                                  theme.textTheme.bodySmall)),
                                      Padding(
                                          padding: getPadding(top: 2),
                                          child: Text("lbl_22".tr,
                                              style: CustomTextStyles
                                                  .titleMedium18))
                                    ])),
                            Container(
                                margin: getMargin(left: 11),
                                padding: getPadding(all: 11),
                                decoration: AppDecoration.style.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder15),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                          padding: getPadding(top: 2),
                                          child: Text("lbl_wed".tr,
                                              style: CustomTextStyles
                                                  .bodySmallWhiteA700)),
                                      Padding(
                                          padding: getPadding(top: 3),
                                          child: Text("lbl_23".tr,
                                              style: CustomTextStyles
                                                  .titleMediumWhiteA70018))
                                    ])),
                            Container(
                                margin: getMargin(left: 11),
                                padding: getPadding(
                                    left: 11, top: 12, right: 11, bottom: 12),
                                decoration: AppDecoration.outlineBlueGray
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder15),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                          padding: getPadding(left: 2, top: 2),
                                          child: Text("lbl_thu".tr,
                                              style:
                                                  theme.textTheme.bodySmall)),
                                      Padding(
                                          padding: getPadding(top: 3),
                                          child: Text("lbl_24".tr,
                                              style: CustomTextStyles
                                                  .titleMedium18))
                                    ])),
                            Container(
                                margin: getMargin(left: 11),
                                padding: getPadding(all: 11),
                                decoration: AppDecoration.outlineBlueGray
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder15),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                          padding: getPadding(left: 5, top: 2),
                                          child: Text("lbl_fri".tr,
                                              style:
                                                  theme.textTheme.bodySmall)),
                                      Padding(
                                          padding: getPadding(top: 3),
                                          child: Text("lbl_25".tr,
                                              style: CustomTextStyles
                                                  .titleMedium18))
                                    ])),
                            Container(
                                margin: getMargin(left: 6),
                                padding: getPadding(
                                    left: 11, top: 14, right: 11, bottom: 14),
                                decoration: AppDecoration.outlineBlueGray
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder15),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: getPadding(left: 3),
                                          child: Text("lbl_sat".tr,
                                              style:
                                                  theme.textTheme.bodySmall)),
                                      Padding(
                                          padding: getPadding(top: 1),
                                          child: Text("lbl_26".tr,
                                              style: CustomTextStyles
                                                  .titleMedium18))
                                    ]))
                          ])),
                      Padding(padding: getPadding(top: 32), child: Divider()),
                      Padding(
                          padding: getPadding(top: 32, bottom: 5),
                          child:
                              BlocBuilder<DoctorDetailBloc, DoctorDetailState>(
                                  builder: (context, doctorDetailModelObj) {
                            return Wrap(
                                runSpacing: getVerticalSize(9),
                                spacing: getHorizontalSize(9),
                                children: List<Widget>.generate(9, (index) {
                                  return TimeSelectionItemWidget(
                                      onSelectedChipView: (value) {
                                    context.read<DoctorDetailBloc>().add(
                                        UpdateChipViewEvent(
                                            index: index, isSelected: value));
                                  });
                                }));
                          }))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 24, right: 24, bottom: 28),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomIconButton(
                      height: getSize(50),
                      width: getSize(50),
                      padding: getPadding(all: 13),
                      decoration: IconButtonStyleHelper.fillBlue,
                      child: CustomImageView(svgPath: ImageConstant.imgMusic)),
                  Expanded(
                      child: CustomElevatedButton(
                          text: "lbl_book_apointment".tr,
                          margin: getMargin(left: 11),
                          buttonTextStyle:
                              CustomTextStyles.titleSmallWhiteA700))
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
