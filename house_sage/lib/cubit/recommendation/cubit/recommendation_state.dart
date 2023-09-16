part of 'recommendation_cubit.dart';

abstract class RecommendationState {
  const RecommendationState();

  @override
  List<Object> get props => [];
}

class RecommendationInitial extends RecommendationState {}

class RecommentdationIndex extends RecommendationState {
  final int index;
  const RecommentdationIndex({required this.index});
}
