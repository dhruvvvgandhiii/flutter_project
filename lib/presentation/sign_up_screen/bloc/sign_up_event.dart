part of 'sign_up_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignUp widget.
///
/// Events must be immutable and implement the [Equatable] interface.

@immutable
abstract class SignUpEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

///Event that is dispatched when the user calls the https://demoapiwisegpt.dhiwise.co/device/auth/register API.
class CreateRegisterEvent extends SignUpEvent {
  CreateRegisterEvent({this.onCreateRegisterEventSuccess});

  Function? onCreateRegisterEventSuccess;

  @override
  List<Object?> get props => [
        onCreateRegisterEventSuccess,
      ];
}

/// Event that is dispatched when the SignUp widget is first created.

class SignUpInitialEvent extends SignUpEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility

class ChangePasswordVisibilityEvent extends SignUpEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox

class ChangeCheckBoxEvent extends SignUpEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
