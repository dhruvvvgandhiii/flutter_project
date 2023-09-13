import 'package:flutter/material.dart';
import 'package:helthio_app/core/app_export.dart';
import 'package:helthio_app/widgets/custom_search_view.dart';

import '../articles_screen/widgets/related_articles_item_widget.dart';
import '../articles_screen/widgets/trending_articles_item_widget.dart';
import 'bloc/articles_bloc.dart';

class ArticlesScreen extends StatelessWidget {
  const ArticlesScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ArticlesBloc>(
        create: (context) =>
            ArticlesBloc(ArticlesState())..add(ArticlesInitialEvent()),
        child: ArticlesScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 24),
                    child: Padding(
                        padding: getPadding(left: 20),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              BlocSelector<ArticlesBloc, ArticlesState,
                                      TextEditingController?>(
                                  selector: (state) => state.searchController,
                                  builder: (context, searchController) {
                                    return CustomSearchView(
                                        margin: getMargin(left: 4, right: 24),
                                        controller: searchController,
                                        hintText: "msg_search_articles".tr,
                                        hintStyle:
                                            CustomTextStyles.bodySmallGray500,
                                        prefix: Container(
                                            margin: getMargin(
                                                left: 16,
                                                top: 11,
                                                right: 8,
                                                bottom: 11),
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgSearch)),
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
                                                    color: Colors
                                                        .grey.shade600))));
                                  }),
                              Padding(
                                  padding: getPadding(left: 4, top: 25),
                                  child: Text("msg_popular_articles".tr,
                                      style: theme.textTheme.titleMedium)),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 4, top: 13, right: 13),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                                padding: getPadding(
                                                    left: 17,
                                                    top: 15,
                                                    right: 17,
                                                    bottom: 15),
                                                decoration: AppDecoration.style
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder10),
                                                child: Text("lbl_covid_19".tr,
                                                    style: CustomTextStyles
                                                        .titleSmallWhiteA700)),
                                            Container(
                                                margin: getMargin(left: 5),
                                                padding: getPadding(
                                                    left: 30,
                                                    top: 16,
                                                    right: 30,
                                                    bottom: 16),
                                                decoration: AppDecoration.style
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder10),
                                                child: Text("lbl_diet".tr,
                                                    style: CustomTextStyles
                                                        .titleSmallWhiteA700)),
                                            Container(
                                                margin: getMargin(left: 5),
                                                padding: getPadding(
                                                    left: 30,
                                                    top: 16,
                                                    right: 30,
                                                    bottom: 16),
                                                decoration: AppDecoration.style
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder10),
                                                child: Text("lbl_fitness".tr,
                                                    style: CustomTextStyles
                                                        .titleSmallWhiteA700))
                                          ]))),
                              Padding(
                                  padding:
                                      getPadding(left: 4, top: 25, right: 18),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("msg_trending_articles".tr,
                                            style: theme.textTheme.titleMedium),
                                        Padding(
                                            padding: getPadding(bottom: 4),
                                            child: Text("lbl_see_all".tr,
                                                style: CustomTextStyles
                                                    .bodySmallPrimary))
                                      ])),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: SizedBox(
                                      height: getVerticalSize(232),
                                      child: BlocBuilder<ArticlesBloc,
                                              ArticlesState>(
                                          builder: (context, articlesModelObj) {
                                        return ListView.separated(
                                            padding:
                                                getPadding(left: 4, top: 13),
                                            scrollDirection: Axis.horizontal,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                  width: getHorizontalSize(15));
                                            },
                                            itemCount: 3,
                                            itemBuilder: (context, index) {
                                              return TrendingArticlesItemWidget();
                                            });
                                      }))),
                              Padding(
                                  padding: getPadding(top: 23, right: 20),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("msg_related_articles".tr,
                                            style: CustomTextStyles
                                                .titleMediumBlack900),
                                        Padding(
                                            padding: getPadding(bottom: 2),
                                            child: Text("lbl_see_all".tr,
                                                style: CustomTextStyles
                                                    .bodySmallPrimary))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 15, right: 20),
                                  child:
                                      BlocBuilder<ArticlesBloc, ArticlesState>(
                                          builder: (context, articlesModelObj) {
                                    return ListView.separated(
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                              height: getVerticalSize(10));
                                        },
                                        itemCount: 3,
                                        itemBuilder: (context, index) {
                                          return RelatedArticlesItemWidget();
                                        });
                                  }))
                            ]))))));
  }
}
