import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:helthio_app/core/app_export.dart';
import 'package:helthio_app/widgets/app_bar/appbar_image_1.dart';
import 'package:helthio_app/widgets/app_bar/appbar_title.dart';
import 'package:helthio_app/widgets/app_bar/custom_app_bar.dart';
import 'package:helthio_app/widgets/custom_search_view.dart';
import 'package:welltested_annotation/welltested_annotation.dart';

import '../home_page/widgets/doctor_speciality_item_widget.dart';
import '../home_page/widgets/slider_view_item_widget.dart';
import '../home_page/widgets/upcoming_appointment_item_widget.dart';
import 'bloc/home_bloc.dart';

// ignore_for_file: must_be_immutable


class HomePage extends StatelessWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(HomeState())..add(HomeInitialEvent()),
      child: HomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA70001,
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          height: getVerticalSize(84),
          title: AppbarTitle(
            text: "msg_find_your_desire".tr,
            margin: getMargin(
              left: 24,
            ),
          ),
          actions: [
            AppbarImage1(
              svgPath: ImageConstant.imgVolume,
              margin: getMargin(
                left: 24,
                top: 5,
                right: 24,
                bottom: 28,
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              BlocSelector<HomeBloc, HomeState, TextEditingController?>(
                selector: (state) => state.searchController,
                builder: (context, searchController) {
                  return CustomSearchView(
                    margin: getMargin(
                      left: 24,
                      top: 22,
                      right: 24,
                    ),
                    controller: searchController,
                    hintText: "msg_search_doctor_drugs".tr,
                    hintStyle: CustomTextStyles.bodySmallGray500,
                    prefix: Container(
                      margin: getMargin(
                        left: 16,
                        top: 11,
                        right: 8,
                        bottom: 11,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgSearch,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: getVerticalSize(40),
                    ),
                    suffix: Padding(
                      padding: EdgeInsets.only(
                        right: getHorizontalSize(15),
                      ),
                      child: IconButton(
                        onPressed: () {
                          searchController!.clear();
                        },
                        icon: Icon(
                          Icons.clear,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ),
                  );
                },
              ),
              Padding(
                padding: getPadding(
                  left: 24,
                  top: 30,
                  right: 24,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: BlocBuilder<HomeBloc, HomeState>(
                    builder: (context, state) {
                      return CarouselSlider.builder(
                        options: CarouselOptions(
                          height: getVerticalSize(135),
                          initialPage: 0,
                          autoPlay: true,
                          viewportFraction: 1.0,
                          enableInfiniteScroll: false,
                          scrollDirection: Axis.horizontal,
                          onPageChanged: (
                            index,
                            reason,
                          ) {
                            state.sliderIndex = index;
                          },
                        ),
                        itemCount: 2,
                        itemBuilder: (context, index, realIndex) {
                          return SliderViewItemWidget();
                        },
                      );
                    },
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 24,
                      top: 10,
                      right: 24,
                    ),
                    child: BlocBuilder<HomeBloc, HomeState>(
                      builder: (context, homeModelObj) {
                        return GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: getVerticalSize(82),
                            crossAxisCount: 3,
                            mainAxisSpacing: getHorizontalSize(21),
                            crossAxisSpacing: getHorizontalSize(21),
                          ),
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return DoctorSpecialityItemWidget();
                          },
                        );
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 24,
                  top: 30,
                  right: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "msg_upcoming_apportionment".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                    Padding(
                      padding: getPadding(
                        bottom: 2,
                      ),
                      child: Text(
                        "lbl_see_all".tr,
                        style: CustomTextStyles.titleSmallPrimary,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 24,
                  top: 10,
                  right: 24,
                ),
                child: BlocBuilder<HomeBloc, HomeState>(
                  builder: (context, homeModelObj) {
                    return ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (
                        context,
                        index,
                      ) {
                        return SizedBox(
                          height: getVerticalSize(8),
                        );
                      },
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return UpcomingAppointmentItemWidget();
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
