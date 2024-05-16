import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'add_medical_records_state.dart';

class AddMedicalRecordsCubit extends Cubit<AddMedicalRecordsState> {
  String selectedTypeRecord = "Report";
  AddMedicalRecordsCubit() : super(AddMedicalRecordsInitial());
  static AddMedicalRecordsCubit get(context) => BlocProvider.of(context);

  selectRecordType(String s) {
    emit(AddMedicalRecordsloadingState());
    selectedTypeRecord = s;
    print(s);
    emit(AddMedicalRecordsSuccessState());
  }
}
