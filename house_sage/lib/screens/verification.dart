import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:house_sage/cubit/timer/cubit/timer_cubit.dart';
import 'package:house_sage/screens/create_new_password.dart';
import 'package:house_sage/screens/reset_password2.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/utils/style.dart';
import 'package:house_sage/widget/backwidget.dart';
import 'package:house_sage/widget/button.dart';
import 'package:house_sage/widget/otp_textfield.dart';

class Verification extends StatefulWidget {
  final bool isNewPsw;
  const Verification({super.key, required this.isNewPsw});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  String currentCode = '';

  @override
  void initState() {
    context.read<TimerCubit>().startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .025),
            const BackWidget(),
            Text(
              'Enter Your OTP',
              textAlign: TextAlign.center,
              style: textStyle.copyWith(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: ColorUtils.contentPrimary),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .025),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                OtpTextField(),
                OtpTextField(),
                OtpTextField(),
                OtpTextField()
              ],
            ),
            // SizedBox(
            //   width: MediaQuery.of(context).size.width * .7,
            //   child: PinFieldAutoFill(
            //       codeLength: 4,
            //       currentCode: currentCode,
            //       onCodeChanged: (p0) {
            //         currentCode = p0.toString();
            //       },
            //       decoration: BoxLooseDecoration(
            //         radius: const Radius.circular(15.0),
            //         gapSpace: MediaQuery.of(context).size.width * .035,
            //         bgColorBuilder: PinListenColorBuilder(
            //             ColorUtils.textfieldBg, ColorUtils.textfieldBg),
            //         strokeColorBuilder: PinListenColorBuilder(
            //             ColorUtils.textfieldBg, ColorUtils.textfieldBg),
            //       )),
            // ),
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
                if (widget.isNewPsw) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CreateNewPassword()));
                } else {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ResetPassword2()));
                }
              },
            ),
          ],
        ),
      )),
    );
  }
}
