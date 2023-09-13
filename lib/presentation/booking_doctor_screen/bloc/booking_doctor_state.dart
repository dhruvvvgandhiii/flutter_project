// ignore_for_file: must_be_immutable

part of 'booking_doctor_bloc.dart';

/// Represents the state of BookingDoctor in the application.
class BookingDoctorState extends Equatable {
  BookingDoctorState({
    this.shareController,
  });

  TextEditingController? shareController;

  @override
  List<Object?> get props => [
        shareController,
      ];
  BookingDoctorState copyWith({
    TextEditingController? shareController,
  }) {
    return BookingDoctorState(
      shareController: shareController ?? this.shareController,
    );
  }
}
