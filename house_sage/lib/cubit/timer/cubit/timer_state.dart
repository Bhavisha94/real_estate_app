// ignore_for_file: must_be_immutable

part of 'timer_cubit.dart';

class TimerState {
  int timer;
  TimerState({required this.timer});

  @override
  List<Object> get props => [timer];
}

class TimerStateStop extends TimerState {
  TimerStateStop() : super(timer: 0);
}
