import 'package:flutter/material.dart';
import 'package:helthio_app/core/app_export.dart';
import 'package:helthio_app/widgets/app_bar/appbar_image.dart';
import 'package:helthio_app/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:helthio_app/widgets/app_bar/custom_app_bar.dart';
import 'package:helthio_app/widgets/custom_elevated_button.dart';

import '../my_cart_screen/widgets/my_cart_item_widget.dart';
import 'bloc/my_cart_bloc.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<MyCartBloc>(
        create: (context) =>
            MyCartBloc(MyCartState())..add(MyCartInitialEvent()),
        child: MyCartScreen());
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
                title: AppbarSubtitle1(text: "lbl_my_cart".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 20, top: 24, right: 20, bottom: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(child: BlocBuilder<MyCartBloc, MyCartState>(
                          builder: (context, myCartModelObj) {
                        return ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            separatorBuilder: (context, index) {
                              return SizedBox(height: getVerticalSize(20));
                            },
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              return MyCartItemWidget();
                            });
                      })),
                      Padding(
                          padding: getPadding(top: 30),
                          child: Text("lbl_payment_detail".tr,
                              style: CustomTextStyles.titleMediumInter_1)),
                      Padding(
                          padding: getPadding(top: 13),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_subtotal".tr,
                                    style: CustomTextStyles
                                        .bodyMediumInterErrorContainer),
                                Text("lbl_25_98".tr,
                                    style: CustomTextStyles
                                        .bodyMediumInterErrorContainer)
                              ])),
                      Padding(
                          padding: getPadding(top: 11),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_taxes".tr,
                                    style: CustomTextStyles
                                        .bodyMediumInterErrorContainer),
                                Text("lbl_1_00".tr,
                                    style: CustomTextStyles
                                        .bodyMediumInterErrorContainer)
                              ])),
                      Padding(
                          padding: getPadding(top: 11),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_total".tr,
                                    style: CustomTextStyles.titleSmallInter),
                                Text("lbl_26_98".tr,
                                    style: CustomTextStyles.titleSmallInter)
                              ])),
                      Padding(padding: getPadding(top: 14), child: Divider()),
                      Padding(
                          padding: getPadding(top: 15),
                          child: Text("lbl_payment_method".tr,
                              style: CustomTextStyles.titleMediumInter_1)),
                      Container(
                          margin: getMargin(top: 13, bottom: 5),
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
                                    padding: getPadding(top: 4),
                                    child: Text("lbl_change".tr,
                                        style: CustomTextStyles
                                            .bodySmallInterGray500))
                              ]))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 20, right: 20, bottom: 26),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: getPadding(top: 4, bottom: 4),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("lbl_total".tr,
                                    style: CustomTextStyles
                                        .titleSmallInterGray500),
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("lbl_26_982".tr,
                                        style:
                                            CustomTextStyles.titleMediumInter))
                              ])),
                      CustomElevatedButton(
                          width: getHorizontalSize(192),
                          text: "lbl_checkout".tr,
                          buttonTextStyle:
                              CustomTextStyles.titleSmallInterWhiteA700)
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
