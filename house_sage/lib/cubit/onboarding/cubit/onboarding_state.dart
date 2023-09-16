part of 'onboarding_cubit.dart';

abstract class OnboardingState {}

class OnboardingInitial extends OnboardingState {}

class OnboardingPageIndex extends OnboardingState {
  final int index;
  OnboardingPageIndex({required this.index});
}
