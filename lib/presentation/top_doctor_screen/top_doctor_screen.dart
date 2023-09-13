import 'package:flutter/material.dart';
import 'package:helthio_app/core/app_export.dart';
import 'package:helthio_app/widgets/app_bar/appbar_image.dart';
import 'package:helthio_app/widgets/app_bar/appbar_image_1.dart';
import 'package:helthio_app/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:helthio_app/widgets/app_bar/custom_app_bar.dart';

import '../top_doctor_screen/widgets/top_doctor_item_widget.dart';
import 'bloc/top_doctor_bloc.dart';

class TopDoctorScreen extends StatelessWidget {
  const TopDoctorScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<TopDoctorBloc>(
        create: (context) =>
            TopDoctorBloc(TopDoctorState())..add(TopDoctorInitialEvent()),
        child: TopDoctorScreen());
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
                title: AppbarSubtitle1(text: "lbl_top_doctor".tr),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgComponent1,
                      margin:
                          getMargin(left: 24, top: 13, right: 24, bottom: 11))
                ]),
            body: Padding(
                padding: getPadding(left: 24, top: 24, right: 24),
                child: BlocBuilder<TopDoctorBloc, TopDoctorState>(
                    builder: (context, topDoctorModelObj) {
                  return ListView.separated(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: getVerticalSize(16));
                      },
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return TopDoctorItemWidget(
                          onTapDoctor: () {
                            onTapDoctor(context);
                          },
                        );
                      });
                }))));
  }

  /// Navigates to the doctorDetailScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the doctorDetailScreen.
  onTapDoctor(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.doctorDetailScreen);
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
