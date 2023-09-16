import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:equatable/equatable.dart';
part 'timer_state.dart';

class TimerCubit extends Cubit<TimerState> {
  TimerCubit() : super(TimerState(timer: 20));

  Timer? timer;

  startTimer() {
    int start = 20;
    const onsec = Duration(seconds: 1);
    timer = Timer.periodic(onsec, (timer) {
      if (start == 0) {
        timer.cancel();
        emit(TimerState(timer: start));
      } else {
        emit(TimerState(timer: start));
        start--;
      }
    });
  }

  stopTimer() {
    timer?.cancel();
    timer = null;
  }
}
