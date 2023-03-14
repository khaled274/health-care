// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'doctor_screen_state.dart';

class DoctorScreenCubit extends Cubit<DoctorScreenState> {
  DoctorScreenCubit() : super(DoctorScreenInitial());
}
