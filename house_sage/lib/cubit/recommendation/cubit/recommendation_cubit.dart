import 'package:flutter_bloc/flutter_bloc.dart';

part 'recommendation_state.dart';

class RecommendationCubit extends Cubit<RecommendationState> {
  RecommendationCubit() : super(RecommendationInitial());

  change(int index) {
    emit(RecommendationInitial());
    emit(RecommentdationIndex(index: index));
  }
}
