// ignore_for_file: must_be_immutable

part of 'sign_up_bloc.dart';

/// Represents the state of SignUp in the application.
class SignUpState extends Equatable {
  SignUpState({
    this.nameController,
    this.emailController,
    this.passwordController,
    this.isShowPassword = true,
    this.checkbox = false,
    this.signUpResponse,
  });

  TextEditingController? nameController;

  TextEditingController? emailController;

  TextEditingController? passwordController;

  PostRegisterDeviceAuthResp? signUpResponse;

  bool isShowPassword;

  bool checkbox;

  @override
  List<Object?> get props => [
        nameController,
        emailController,
        passwordController,
        isShowPassword,
        checkbox,
        signUpResponse,
      ];
  SignUpState copyWith({
    TextEditingController? nameController,
    TextEditingController? emailController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    bool? checkbox,
    PostRegisterDeviceAuthResp? signUpResponse,
  }) {
    return SignUpState(
      nameController: nameController ?? this.nameController,
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      checkbox: checkbox ?? this.checkbox,
      signUpResponse: signUpResponse ?? this.signUpResponse,
    );
  }
}
