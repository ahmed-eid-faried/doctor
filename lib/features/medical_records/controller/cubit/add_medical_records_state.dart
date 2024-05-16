part of 'add_medical_records_cubit.dart';

sealed class AddMedicalRecordsState extends Equatable {
  const AddMedicalRecordsState();

  @override
  List<Object> get props => [];
}

final class AddMedicalRecordsInitial extends AddMedicalRecordsState {}

final class AddMedicalRecordsloadingState extends AddMedicalRecordsState {}

final class AddMedicalRecordsErrorState extends AddMedicalRecordsState {}

final class AddMedicalRecordsSuccessState extends AddMedicalRecordsState {}
