import 'package:flutter/material.dart';
import 'package:helthio_app/core/app_export.dart';
import 'package:helthio_app/widgets/custom_elevated_button.dart';
import 'package:helthio_app/widgets/custom_outlined_button.dart';

import 'bloc/onboarding_bloc.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingBloc>(
      create: (context) =>
          OnboardingBloc(OnboardingState())..add(OnboardingInitialEvent()),
      child: OnboardingScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<OnboardingBloc, OnboardingState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: Container(
              width: double.maxFinite,
              padding: getPadding(
                left: 23,
                top: 60,
                right: 23,
                bottom: 60,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgVideocamera,
                    height: getVerticalSize(66),
                    width: getHorizontalSize(59),
                    margin: getMargin(
                      top: 119,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 5,
                    ),
                    child: Text(
                      "lbl_helthio".tr,
                      style: CustomTextStyles.headlineSmallPrimary,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 40,
                    ),
                    child: Text(
                      "msg_let_s_get_started".tr,
                      style: CustomTextStyles.titleLargeOnPrimary,
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(260),
                    margin: getMargin(
                      left: 34,
                      top: 9,
                      right: 33,
                    ),
                    child: Text(
                      "msg_login_to_enjoy_the".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.titleMediumGray600.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                  Spacer(),
                  CustomElevatedButton(
                      height: getVerticalSize(56),
                      text: "lbl_login".tr,
                      onTap: () {
                        onTapLogin(context);
                      }),
                  CustomOutlinedButton(
                      text: "lbl_sign_up".tr,
                      margin: getMargin(
                        top: 16,
                      ),
                      buttonStyle: CustomButtonStyles.outlinePrimary,
                      buttonTextStyle: CustomTextStyles.titleMediumPrimary,
                      onTap: () {
                        onTapSignup(context);
                      }),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Navigates to the loginScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the loginScreen.
  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }

  /// Navigates to the signUpScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the signUpScreen.
  onTapSignup(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpScreen,
    );
  }
}
