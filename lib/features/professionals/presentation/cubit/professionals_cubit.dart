import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'professionals_state.dart';

class ProfessionalsCubit extends Cubit<ProfessionalsState> {
  ProfessionalsCubit() : super(ProfessionalsInitial());
}
