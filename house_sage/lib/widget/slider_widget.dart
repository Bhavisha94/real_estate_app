import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:house_sage/utils/colors.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _lowerValue = 230;
  double _upperValue = 1568;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .085,
          width: MediaQuery.of(context).size.width,
        ),
        Positioned(
            top: 0,
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: SvgPicture.asset('assets/images/pagination.svg'))),
        Positioned(
          bottom: 0,
          child: Container(
              height: MediaQuery.of(context).size.height * .03,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.centerLeft,
              child: FlutterSlider(
                values: [_lowerValue, _upperValue],
                rangeSlider: true,
                max: 2000,
                min: 0,
                step: const FlutterSliderStep(step: 1),
                jump: true,
                handlerHeight: 20,
                trackBar: FlutterSliderTrackBar(
                  activeTrackBarHeight: 5,
                  activeTrackBar: BoxDecoration(color: ColorUtils.mainColor),
                ),
                handler: FlutterSliderHandler(
                  decoration: const BoxDecoration(),
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        color: ColorUtils.mainColor,
                        borderRadius: BorderRadius.circular(25)),
                    child: Center(
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25)),
                      ),
                    ),
                  ),
                ),
                rightHandler: FlutterSliderHandler(
                  decoration: const BoxDecoration(),
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        color: ColorUtils.mainColor,
                        borderRadius: BorderRadius.circular(25)),
                    child: Center(
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25)),
                      ),
                    ),
                  ),
                ),
                disabled: false,
                onDragging: (handlerIndex, lowerValue, upperValue) {
                  _lowerValue = lowerValue;
                  _upperValue = upperValue;
                  setState(() {});
                },
              )),
        ),
      ],
    );
  }
}
