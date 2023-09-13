import 'package:flutter/material.dart';
import 'package:helthio_app/core/app_export.dart';
import 'package:helthio_app/widgets/app_bar/appbar_image.dart';
import 'package:helthio_app/widgets/app_bar/appbar_image_1.dart';
import 'package:helthio_app/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:helthio_app/widgets/app_bar/custom_app_bar.dart';

import '../apportionment_list_screen/widgets/appointment_item_widget.dart';
import 'bloc/apportionment_list_bloc.dart';

class AppointmentListScreen extends StatelessWidget {
  const AppointmentListScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ApportionmentListBloc>(
        create: (context) => ApportionmentListBloc(ApportionmentListState())
          ..add(ApportionmentListInitialEvent()),
        child: AppointmentListScreen());
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
                      onTapLeftArrow(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle1(text: "msg_my_apportionment".tr),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgComponent1,
                      margin:
                          getMargin(left: 24, top: 13, right: 24, bottom: 11))
                ]),
            body: Padding(
                padding: getPadding(left: 24, top: 16, right: 24),
                child:
                    BlocBuilder<ApportionmentListBloc, ApportionmentListState>(
                        builder: (context, apportionmentListModelObj) {
                  return ListView.separated(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: getVerticalSize(10));
                      },
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return AppointmentItemWidget(onTapAppointmentItem: () {
                          onTapAppointmentItem(context);
                        });
                      });
                }))));
  }

  /// Navigates to the doctorDetailScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the doctorDetailScreen.
  onTapAppointmentItem(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.doctorDetailScreen);
  }

  /// Navigates to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is
  /// used to build the navigation stack. When the action is triggered, this
  /// function uses the [NavigatorService] to navigate to the previous screen
  /// in the navigation stack.
  onTapLeftArrow(BuildContext context) {
    NavigatorService.goBack();
  }
}
