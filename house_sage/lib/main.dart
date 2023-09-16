import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:house_sage/cubit/bottom_bar.dart/cubit/bottom_item_cubit.dart';
import 'package:house_sage/cubit/filter/cubit/filter_cubit.dart';
import 'package:house_sage/cubit/notifications/cubit/notification_settings_cubit.dart';
import 'package:house_sage/cubit/onboarding/cubit/onboarding_cubit.dart';
import 'package:house_sage/cubit/recommendation/cubit/recommendation_cubit.dart';
import 'package:house_sage/cubit/timer/cubit/timer_cubit.dart';
import 'package:house_sage/screens/dashboard.dart';
import 'package:house_sage/screens/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<OnboardingCubit>(create: (_) => OnboardingCubit()),
        BlocProvider<TimerCubit>(create: (_) => TimerCubit()),
        BlocProvider<BottomItemCubit>(create: (_) => BottomItemCubit()),
        BlocProvider<RecommendationCubit>(create: (_) => RecommendationCubit()),
        BlocProvider<NotificationSettingsCubit>(
            create: (_) => NotificationSettingsCubit()),
        BlocProvider<FilterCubit>(create: (_) => FilterCubit()),
      ],
      child: MaterialApp(
        title: 'House Sage',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Splashscreen(),
      ),
    );
  }
}
