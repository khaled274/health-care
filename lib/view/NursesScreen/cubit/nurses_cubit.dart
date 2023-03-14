// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'nurses_state.dart';

class NursesCubit extends Cubit<NursesState> {
  NursesCubit() : super(NursesInitial());
}
