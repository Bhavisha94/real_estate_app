import 'package:flutter_bloc/flutter_bloc.dart';

part 'bottom_item_state.dart';

class BottomItemCubit extends Cubit<BottomItemState> {
  BottomItemCubit() : super(BottomItemInitial());

  change(int index) {
    emit(BottomItemInitial());
    emit(BottomItemIndex(index: index));
  }
}
