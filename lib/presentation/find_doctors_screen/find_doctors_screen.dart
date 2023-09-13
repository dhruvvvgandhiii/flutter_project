import 'package:flutter/material.dart';
import 'package:helthio_app/core/app_export.dart';
import 'package:helthio_app/widgets/app_bar/appbar_image.dart';
import 'package:helthio_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:helthio_app/widgets/app_bar/custom_app_bar.dart';
import 'package:helthio_app/widgets/custom_search_view.dart';

import '../find_doctors_screen/widgets/doctors_item_widget.dart';
import '../find_doctors_screen/widgets/find_doctors_item_widget.dart';
import 'bloc/find_doctors_bloc.dart';

class FindDoctorsScreen extends StatelessWidget {
  const FindDoctorsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<FindDoctorsBloc>(
        create: (context) =>
            FindDoctorsBloc(FindDoctorsState())..add(FindDoctorsInitialEvent()),
        child: FindDoctorsScreen());
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
                title: AppbarSubtitle(text: "lbl_find_doctors".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 23, top: 24, right: 23, bottom: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      BlocSelector<FindDoctorsBloc, FindDoctorsState,
                              TextEditingController?>(
                          selector: (state) => state.searchController,
                          builder: (context, searchController) {
                            return CustomSearchView(
                                margin: getMargin(left: 1),
                                controller: searchController,
                                hintText: "lbl_find_a_doctor".tr,
                                hintStyle: CustomTextStyles.bodySmall12,
                                prefix: Container(
                                    margin: getMargin(
                                        left: 17,
                                        top: 14,
                                        right: 12,
                                        bottom: 14),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgSearch)),
                                prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(46)),
                                suffix: Padding(
                                    padding: EdgeInsets.only(
                                        right: getHorizontalSize(15)),
                                    child: IconButton(
                                        onPressed: () {
                                          searchController!.clear();
                                        },
                                        icon: Icon(Icons.clear,
                                            color: Colors.grey.shade600))),
                                contentPadding:
                                    getPadding(top: 15, right: 30, bottom: 15));
                          }),
                      Padding(
                          padding: getPadding(left: 1, top: 27),
                          child: Text("lbl_category".tr,
                              style:
                                  CustomTextStyles.titleMediumInterOnPrimary)),
                      Expanded(
                          child: Padding(
                              padding: getPadding(left: 1, top: 10, right: 4),
                              child: BlocBuilder<FindDoctorsBloc,
                                      FindDoctorsState>(
                                  builder: (context, findDoctorsModelObj) {
                                return GridView.builder(
                                    shrinkWrap: true,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            mainAxisExtent: getVerticalSize(82),
                                            crossAxisCount: 4,
                                            mainAxisSpacing:
                                                getHorizontalSize(22),
                                            crossAxisSpacing:
                                                getHorizontalSize(22)),
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: 7,
                                    itemBuilder: (context, index) {
                                      return FindDoctorsItemWidget();
                                    });
                              }))),
                      Padding(
                          padding: getPadding(left: 1, top: 23),
                          child: Text("msg_recommended_doctors".tr,
                              style: CustomTextStyles.titleMediumOnPrimary)),
                      Container(
                          margin: getMargin(left: 1, top: 13),
                          padding: getPadding(top: 16, bottom: 16),
                          decoration: AppDecoration.outlineBlueGray.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse8888x88,
                                    height: getSize(88),
                                    width: getSize(88),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(44)),
                                    margin: getMargin(bottom: 12)),
                                Padding(
                                    padding: getPadding(top: 2, bottom: 5),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("msg_dr_marcus_horizon".tr,
                                              style: CustomTextStyles
                                                  .titleMediumOnPrimary_1),
                                          Padding(
                                              padding: getPadding(top: 8),
                                              child: Text(
                                                  "lbl_chardiologist".tr,
                                                  style: CustomTextStyles
                                                      .bodyMediumGray500)),
                                          Padding(
                                              padding: getPadding(top: 5),
                                              child: SizedBox(
                                                  width: getHorizontalSize(167),
                                                  child: Divider())),
                                          Padding(
                                              padding: getPadding(top: 23),
                                              child: Row(children: [
                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgStar,
                                                    height: getSize(16),
                                                    width: getSize(16),
                                                    margin:
                                                        getMargin(bottom: 2)),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 4, bottom: 1),
                                                    child: Text("lbl_4_7".tr,
                                                        style: CustomTextStyles
                                                            .labelLargeAmber500_1)),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgLocationBlueGray800,
                                                    height: getSize(16),
                                                    width: getSize(16),
                                                    margin: getMargin(
                                                        left: 24, bottom: 2)),
                                                Padding(
                                                    padding:
                                                        getPadding(left: 4),
                                                    child: Text(
                                                        "lbl_800m_away".tr,
                                                        style: CustomTextStyles
                                                            .titleSmallBluegray800))
                                              ]))
                                        ]))
                              ])),
                      Padding(
                          padding: getPadding(left: 1, top: 42),
                          child: Text("msg_your_recent_doctors".tr,
                              style: CustomTextStyles.titleMediumOnPrimary18)),
                      SizedBox(
                          height: getVerticalSize(102),
                          child: BlocBuilder<FindDoctorsBloc, FindDoctorsState>(
                              builder: (context, findDoctorsModelObj) {
                            return ListView.separated(
                                padding: getPadding(left: 1, top: 13),
                                scrollDirection: Axis.horizontal,
                                separatorBuilder: (context, index) {
                                  return SizedBox(width: getHorizontalSize(24));
                                },
                                itemCount: 4,
                                itemBuilder: (context, index) {
                                  return DoctorsItemWidget();
                                });
                          }))
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
