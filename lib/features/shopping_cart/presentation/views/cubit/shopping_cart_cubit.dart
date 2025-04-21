import 'package:flutter_bloc/flutter_bloc.dart';

class ShoppingCartCubit extends Cubit<Map<int, int>> {
  ShoppingCartCubit() : super({});
  
  void increment(int index) {
    final newState = Map<int, int>.from(state);
    newState[index] = (newState[index] ?? 1) + 1;
    emit(newState);
  }
  
  void decrement(int index) {
    if ((state[index] ?? 1) > 1) {
      final newState = Map<int, int>.from(state);
      newState[index] = (newState[index] ?? 1) - 1;
      emit(newState);
    }
    
  }
  void removeItem(int index) {
    final updatedState = Map<int, int>.from(state);
    updatedState.remove(index);
    emit(updatedState);
  }
}
  
