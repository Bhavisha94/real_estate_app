part of 'filter_cubit.dart';

abstract class FilterState {
  const FilterState();

  @override
  List<Object> get props => [];
}

class FilterInitial extends FilterState {}

class FilterCategory extends FilterState {
  final int index;
  const FilterCategory({required this.index});
}

class CompletenessFilter extends FilterState {
  final int? bedroom;
  final int? bathroom;
  final int? stairs;
  const CompletenessFilter({this.bedroom, this.bathroom, this.stairs});
}
