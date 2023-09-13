import 'package:flutter/material.dart';
import 'package:helthio_app/core/app_export.dart';
import 'package:helthio_app/core/utils/validation_functions.dart';
import 'package:helthio_app/widgets/app_bar/appbar_image.dart';
import 'package:helthio_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:helthio_app/widgets/app_bar/custom_app_bar.dart';
import 'package:helthio_app/widgets/custom_checkbox_button.dart';
import 'package:helthio_app/widgets/custom_elevated_button.dart';
import 'package:helthio_app/widgets/custom_text_form_field.dart';

import 'bloc/sign_up_bloc.dart';

// ignore_for_file: must_be_immutable

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpBloc>(
        create: (context) =>
            SignUpBloc(SignUpState())..add(SignUpInitialEvent()),
        child: SignUpScreen());
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
                title: AppbarSubtitle(text: "lbl_sign_up".tr)),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 24, top: 40, right: 24, bottom: 40),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          BlocSelector<SignUpBloc, SignUpState,
                                  TextEditingController?>(
                              selector: (state) => state.nameController,
                              builder: (context, nameController) {
                                return CustomTextFormField(
                                    controller: nameController,
                                    hintText: "lbl_enter_your_name".tr,
                                    hintStyle: theme.textTheme.bodyLarge!,
                                    prefix: Container(
                                        margin: getMargin(
                                            left: 24,
                                            top: 16,
                                            right: 16,
                                            bottom: 16),
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgUser)),
                                    prefixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(56)),
                                    validator: (value) {
                                      if (!isText(value)) {
                                        return "Please enter valid text";
                                      }
                                      return null;
                                    });
                              }),
                          BlocSelector<SignUpBloc, SignUpState,
                                  TextEditingController?>(
                              selector: (state) => state.emailController,
                              builder: (context, emailController) {
                                return CustomTextFormField(
                                    controller: emailController,
                                    margin: getMargin(top: 16),
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
                                    });
                              }),
                          BlocBuilder<SignUpBloc, SignUpState>(
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
                                      context.read<SignUpBloc>().add(
                                          ChangePasswordVisibilityEvent(
                                              value: !state.isShowPassword));
                                    },
                                    child: Container(
                                        margin: getMargin(
                                            left: 30,
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
                          BlocSelector<SignUpBloc, SignUpState, bool?>(
                              selector: (state) => state.checkbox,
                              builder: (context, checkbox) {
                                return CustomCheckboxButton(
                                    text: "msg_i_agree_to_the_medidoc".tr,
                                    isExpandedText: true,
                                    value: checkbox,
                                    margin: getMargin(top: 16, right: 28),
                                    onChange: (value) {
                                      context.read<SignUpBloc>().add(
                                          ChangeCheckBoxEvent(value: value));
                                    });
                              }),
                          CustomElevatedButton(
                            height: getVerticalSize(56),
                            text: "lbl_sign_up".tr,
                            margin: getMargin(top: 29),
                            onTap: () {
                              if (_formKey.currentState!.validate()) {
                                onTapSignUp(context);
                              }
                            },
                          ),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(
                                      left: 44, top: 28, right: 44, bottom: 5),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("msg_already_have_an".tr,
                                            style: CustomTextStyles
                                                .bodyMediumGray600),
                                        GestureDetector(
                                          onTap: () {
                                            onTapTxtLogin(context);
                                          },
                                          child: Padding(
                                              padding: getPadding(left: 4),
                                              child: Text("lbl_log_in2".tr,
                                                  style: CustomTextStyles
                                                      .titleSmallPrimaryMedium)),
                                        )
                                      ])))
                        ])))));
  }

  /// Calls the https://demoapiwisegpt.dhiwise.co/device/auth/register API and triggers a [CreateRegisterEvent] event on the [SignUpBloc] bloc.
  ///
  /// Validates the form and triggers a [CreateRegisterEvent] event on the [SignUpBloc] bloc if the form is valid.
  /// The [BuildContext] parameter represents current [BuildContext]
  onTapSignUp(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      context.read<SignUpBloc>().add(
        CreateRegisterEvent(
          onCreateRegisterEventSuccess: () {
            _onRegisterDeviceAuthEventSuccess(context);
          },
        ),
      );
    }
  }

  /// Navigates to the homeContainer1Screen when the action is triggered.

  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the homeContainer1Screen.
  void _onRegisterDeviceAuthEventSuccess(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeContainerScreen,
    );
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

  /// Navigates to the loginScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the loginScreen.

  onTapTxtLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }
}
