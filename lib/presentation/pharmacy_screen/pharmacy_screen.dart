import 'package:flutter/material.dart';
import 'package:helthio_app/core/app_export.dart';
import 'package:helthio_app/widgets/app_bar/appbar_image.dart';
import 'package:helthio_app/widgets/app_bar/appbar_image_1.dart';
import 'package:helthio_app/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:helthio_app/widgets/app_bar/custom_app_bar.dart';
import 'package:helthio_app/widgets/custom_elevated_button.dart';
import 'package:helthio_app/widgets/custom_search_view.dart';

import '../pharmacy_screen/widgets/popular_product_item_widget.dart';
import '../pharmacy_screen/widgets/sale_product_item_widget.dart';
import 'bloc/pharmacy_bloc.dart';

class PharmacyScreen extends StatelessWidget {
  const PharmacyScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<PharmacyBloc>(
        create: (context) =>
            PharmacyBloc(PharmacyState())..add(PharmacyInitialEvent()),
        child: PharmacyScreen());
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
                title: AppbarSubtitle1(text: "lbl_pharmacy".tr),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgCart,
                      margin: getMargin(left: 24, top: 9, right: 24, bottom: 7))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 24, bottom: 24),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      BlocSelector<PharmacyBloc, PharmacyState,
                              TextEditingController?>(
                          selector: (state) => state.searchController,
                          builder: (context, searchController) {
                            return CustomSearchView(
                                margin: getMargin(left: 24, right: 24),
                                controller: searchController,
                                hintText: "msg_search_drugs_category".tr,
                                hintStyle: CustomTextStyles.bodySmallGray500,
                                prefix: Container(
                                    margin: getMargin(
                                        left: 16,
                                        top: 11,
                                        right: 8,
                                        bottom: 11),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgSearch)),
                                prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(40)),
                                suffix: Padding(
                                    padding: EdgeInsets.only(
                                        right: getHorizontalSize(15)),
                                    child: IconButton(
                                        onPressed: () {
                                          searchController!.clear();
                                        },
                                        icon: Icon(Icons.clear,
                                            color: Colors.grey.shade600))));
                          }),
                      Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: getMargin(top: 24),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Container(
                              height: getVerticalSize(135),
                              width: getHorizontalSize(335),
                              decoration: AppDecoration.linear.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                              child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgContractrqe1,
                                        height: getVerticalSize(135),
                                        width: getHorizontalSize(195),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(10)),
                                        alignment: Alignment.centerRight),
                                    CustomElevatedButton(
                                        height: getVerticalSize(29),
                                        width: getHorizontalSize(132),
                                        text: "msg_upload_prescription".tr,
                                        margin: getMargin(left: 25, bottom: 20),
                                        buttonStyle:
                                            CustomButtonStyles.fillWhiteA,
                                        buttonTextStyle:
                                            CustomTextStyles.labelLargePrimary,
                                        alignment: Alignment.bottomLeft),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                            width: getHorizontalSize(155),
                                            margin:
                                                getMargin(left: 26, top: 22),
                                            child: Text(
                                                "msg_order_quickly_w".tr,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: CustomTextStyles
                                                    .titleMediumWhiteA70018
                                                    .copyWith(height: 1.39))))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 20, top: 25, right: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_popular_product".tr,
                                    style: theme.textTheme.titleMedium),
                                Text("lbl_see_all".tr,
                                    style: CustomTextStyles.titleSmallPrimary)
                              ])),
                      Align(
                          alignment: Alignment.centerRight,
                          child: SizedBox(
                              height: getVerticalSize(178),
                              child: BlocBuilder<PharmacyBloc, PharmacyState>(
                                  builder: (context, pharmacyModelObj) {
                                return ListView.separated(
                                    padding: getPadding(left: 21, top: 13),
                                    scrollDirection: Axis.horizontal,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          width: getHorizontalSize(21));
                                    },
                                    itemCount: 3,
                                    itemBuilder: (context, index) {
                                      return PopularProductItemWidget(
                                          onTapDrugs: () {
                                        onTapDrugs(context);
                                      });
                                    });
                              }))),
                      Padding(
                          padding: getPadding(left: 20, top: 23, right: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_product_on_sale".tr,
                                    style: theme.textTheme.titleMedium),
                                Text("lbl_see_all".tr,
                                    style: CustomTextStyles.titleSmallPrimary)
                              ])),
                      Align(
                          alignment: Alignment.centerRight,
                          child: SizedBox(
                              height: getVerticalSize(180),
                              child: BlocBuilder<PharmacyBloc, PharmacyState>(
                                  builder: (context, pharmacyModelObj) {
                                return ListView.separated(
                                    padding: getPadding(left: 21, top: 15),
                                    scrollDirection: Axis.horizontal,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          width: getHorizontalSize(17));
                                    },
                                    itemCount: 3,
                                    itemBuilder: (context, index) {
                                      return SaleProductItemWidget(
                                          onTapDrugs: () {
                                        onTapDrugs(context);
                                      });
                                    });
                              })))
                    ]))));
  }

  /// Navigates to the drugsDetailScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the drugsDetailScreen.
  onTapDrugs(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.drugsDetailScreen);
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
