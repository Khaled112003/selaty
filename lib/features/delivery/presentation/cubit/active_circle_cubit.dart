import 'package:bloc/bloc.dart';

class ActiveCircleCubit extends Cubit<Map<int, bool>> {
  ActiveCircleCubit() : super({});

  void toggleState(int id) {
    final newState = Map<int, bool>.from(state);
    newState[id] = !(newState[id] ?? false); // عكس الحالة الحالية
    emit(newState);
  }
}
