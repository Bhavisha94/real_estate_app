import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'filter_state.dart';

class FilterCubit extends Cubit<FilterState> {
  FilterCubit() : super(FilterInitial());

  category(int index) {
    emit(FilterInitial());
    emit(FilterCategory(index: index));
  }

  increment({int? bedroom, int? bathroom, int? stairs}) {
    emit(FilterInitial());
    if (bedroom != null) {
      emit(CompletenessFilter(bedroom: bedroom++));
      log(bedroom.toString());
    } else if (bathroom != null) {
      emit(CompletenessFilter(bathroom: bathroom++));
    } else if (stairs != null) {
      emit(CompletenessFilter(stairs: stairs++));
    }
  }

  decrement({int? bedroom, int? bathroom, int? stairs}) {
    emit(FilterInitial());
    if (bedroom != null) {
      emit(CompletenessFilter(bedroom: bedroom--));
    } else if (bathroom != null) {
      emit(CompletenessFilter(bathroom: bathroom--));
    } else if (stairs != null) {
      emit(CompletenessFilter(stairs: stairs--));
    }
  }
}
