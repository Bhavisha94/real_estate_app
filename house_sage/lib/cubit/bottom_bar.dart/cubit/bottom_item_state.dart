part of 'bottom_item_cubit.dart';

abstract class BottomItemState {
  const BottomItemState();

  @override
  List<Object> get props => [];
}

class BottomItemInitial extends BottomItemState {}

class BottomItemIndex extends BottomItemState {
  final int index;
  const BottomItemIndex({required this.index});
}
