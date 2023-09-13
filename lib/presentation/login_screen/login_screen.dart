import 'package:flutter/material.dart';
import 'package:helthio_app/core/app_export.dart';
import 'package:helthio_app/core/utils/validation_functions.dart';
import 'package:helthio_app/domain/facebookauth/facebook_auth_helper.dart';
import 'package:helthio_app/domain/googleauth/google_auth_helper.dart';
import 'package:helthio_app/widgets/app_bar/appbar_image.dart';
import 'package:helthio_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:helthio_app/widgets/app_bar/custom_app_bar.dart';
import 'package:helthio_app/widgets/custom_elevated_button.dart';
import 'package:helthio_app/widgets/custom_outlined_button.dart';
import 'package:helthio_app/widgets/custom_text_form_field.dart';

import 'bloc/login_bloc.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(LoginState())..add(LoginInitialEvent()),
        child: LoginScreen());
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
                title: AppbarSubtitle(text: "lbl_login".tr)),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 24, top: 40, right: 24, bottom: 40),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          BlocSelector<LoginBloc, LoginState,
                                  TextEditingController?>(
                              selector: (state) => state.emailController,
                              builder: (context, emailController) {
                                return CustomTextFormField(
                                    controller: emailController,
                                    hintText: "msg_enter_your_email".tr,
                                    hintStyle: theme.textTheme.bodyLarge!,
                                    textInputType: TextInputType.emailAddress,
                                    prefix: Container(
                                        margin: getMargin(
                                            left: 24,
                                            top: 16,
                                            right: 16,
                                            bottom: 16),
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgCheckmark)),
                                    prefixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(56)),
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidEmail(value,
                                              isRequired: true))) {
                                        return "Please enter valid email";
                                      }
                                      return null;
                                    },
                                    contentPadding: getPadding(
                                        top: 18, right: 12, bottom: 18));
                              }),
                          BlocBuilder<LoginBloc, LoginState>(
                              builder: (context, state) {
                            return CustomTextFormField(
                                controller: state.passwordController,
                                margin: getMargin(top: 16),
                                hintText: "msg_enter_your_password".tr,
                                hintStyle: theme.textTheme.bodyLarge!,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.visiblePassword,
                                prefix: Container(
                                    margin: getMargin(
                                        left: 24,
                                        top: 16,
                                        right: 16,
                                        bottom: 16),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgCar)),
                                prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(56)),
                                suffix: InkWell(
                                    onTap: () {
                                      context.read<LoginBloc>().add(
                                          ChangePasswordVisibilityEvent(
                                              value: !state.isShowPassword));
                                    },
                                    child: Container(
                                        margin: getMargin(
                                            left: 12,
                                            top: 16,
                                            right: 24,
                                            bottom: 16),
                                        child: CustomImageView(
                                            svgPath: state.isShowPassword
                                                ? ImageConstant
                                                    .imgCheckmarkBlueGray300
                                                : ImageConstant
                                                    .imgCheckmarkBlueGray300))),
                                suffixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(56)),
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidPassword(value,
                                          isRequired: true))) {
                                    return "Please enter valid password";
                                  }
                                  return null;
                                },
                                obscureText: state.isShowPassword,
                                contentPadding:
                                    getPadding(top: 18, bottom: 18));
                          }),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding: getPadding(top: 10),
                                  child: Text("msg_forgot_password".tr,
                                      style:
                                          CustomTextStyles.titleSmallPrimary))),
                          CustomElevatedButton(
                            height: getVerticalSize(56),
                            text: "lbl_login".tr,
                            margin: getMargin(top: 32),
                            onTap: () {
                              NavigatorService.pushNamed(
                                AppRoutes.signUpScreen,
                              );
                            },
                          ),
                          Padding(
                              padding: getPadding(left: 48, top: 26, right: 48),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Text(
                                            "msg_don_t_have_an_account".tr,
                                            style: CustomTextStyles
                                                .bodyMediumGray600)),
                                    GestureDetector(
                                      onTap: () {
                                        onTapTxtSignup(context);
                                      },
                                      child: Padding(
                                          padding: getPadding(left: 4),
                                          child: Text("lbl_sign_up".tr,
                                              style: CustomTextStyles
                                                  .titleSmallPrimaryMedium)),
                                    )
                                  ])),
                          Padding(
                              padding: getPadding(top: 32),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 8, bottom: 9),
                                        child: SizedBox(
                                            width: getHorizontalSize(137),
                                            child: Divider(
                                                color: appTheme.gray200))),
                                    Text("lbl_or".tr,
                                        style: theme.textTheme.bodyLarge),
                                    Padding(
                                        padding: getPadding(top: 8, bottom: 9),
                                        child: SizedBox(
                                            width: getHorizontalSize(137),
                                            child: Divider(
                                                color: appTheme.gray200)))
                                  ])),
                          CustomOutlinedButton(
                              text: "msg_sign_in_with_google".tr,
                              margin: getMargin(top: 29),
                              leftIcon: Container(
                                  margin: getMargin(right: 30),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgGoogle)),
                              onTap: () {
                                onTapSigninwith(context);
                              }),
                          CustomOutlinedButton(
                              text: "msg_sign_in_with_apple".tr,
                              margin: getMargin(top: 16),
                              leftIcon: Container(
                                  margin: getMargin(right: 30),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgApple))),
                          CustomOutlinedButton(
                              text: "msg_sign_in_with_facebook".tr,
                              margin: getMargin(top: 16, bottom: 5),
                              leftIcon: Container(
                                  padding: getPadding(
                                      left: 7, top: 4, right: 6, bottom: 4),
                                  margin: getMargin(right: 30),
                                  decoration: BoxDecoration(
                                      color: appTheme.blue600,
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(10))),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgFacebook)),
                              onTap: () {
                                onTapSigninwith1(context);
                              })
                        ])))));
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

  /// Navigates to the signUpScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the signUpScreen.
  onTapTxtSignup(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpScreen,
    );
  }

  /// Performs a Google sign-in and returns a [GoogleUser] object.
  ///
  /// If the sign-in is successful, the [onSuccess] callback will be called with
  /// a TODO comment needed to be modified by you.
  /// If the sign-in fails, the [onError] callback will be called with the error message.
  ///
  /// Throws an exception if the Google sign-in process fails.
  onTapSigninwith(BuildContext context) async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('user data is empty')));
      }
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }

  /// Performs a Facebook sign-in and returns a [FacebookUser] object.
  ///
  /// If the sign-in is successful, the [onSuccess] callback will be called with
  /// a TODO comment needed to be modified by you.
  /// If the sign-in fails, the [onError] callback will be called with the error message.
  ///
  /// Throws an exception if the Facebook sign-in process fails.
  onTapSigninwith1(BuildContext context) async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }
}
