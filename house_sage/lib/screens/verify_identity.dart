import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:house_sage/cubit/timer/cubit/timer_cubit.dart';
import 'package:house_sage/screens/virtual_app.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/utils/style.dart';
import 'package:house_sage/widget/appbar.dart';
import 'package:house_sage/widget/button.dart';
import 'package:house_sage/widget/otp_textfield.dart';

class VerifyIdentity extends StatefulWidget {
  const VerifyIdentity({super.key});

  @override
  State<VerifyIdentity> createState() => _VerifyIdentityState();
}

class _VerifyIdentityState extends State<VerifyIdentity> {
  @override
  void initState() {
    context.read<TimerCubit>().startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget.backArrowAppBar(
          title: 'Verify your identity', context: context),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * .9,
              child: Text(
                'Verify phone number',
                style: textStyle.copyWith(
                    fontSize: 22, fontWeight: FontWeight.w600),
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            SizedBox(
              width: MediaQuery.of(context).size.width * .9,
              child: Text.rich(TextSpan(
                  text: 'We send a code to ( ',
                  style: textStyle.copyWith(color: ColorUtils.contentTertiary),
                  children: [
                    TextSpan(
                        text: '*****666',
                        style: textStyle.copyWith(
                            color: ColorUtils.contentPrimary)),
                    TextSpan(
                      text: '). Enter it here to verify your identity',
                      style:
                          textStyle.copyWith(color: ColorUtils.contentTertiary),
                    )
                  ])),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .04),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                OtpTextField(),
                OtpTextField(),
                OtpTextField(),
                OtpTextField()
              ],
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .04),
            BlocBuilder<TimerCubit, TimerState>(
              builder: (context, state) {
                return state.timer == 0
                    ? state.timer == 20
                        ? const SizedBox()
                        : InkWell(
                            onTap: () {
                              context.read<TimerCubit>().startTimer();
                            },
                            child: const Text(
                              'Get the code again',
                            ),
                          )
                    : Text.rich(TextSpan(
                        text: 'Resend code in ',
                        style: textStyle.copyWith(
                            fontWeight: FontWeight.w600,
                            color: ColorUtils.contentPrimary),
                        children: [
                            TextSpan(
                                text: state.timer.toString(),
                                style: textStyle.copyWith(
                                    color: ColorUtils.mainColor,
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: ' s',
                                style: textStyle.copyWith(
                                    color: ColorUtils.contentPrimary,
                                    fontWeight: FontWeight.w600)),
                          ]));
              },
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .1),
            Button(
              width: MediaQuery.of(context).size.width * .9,
              text: 'Verify',
              onCallBack: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const VirtualApp()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
