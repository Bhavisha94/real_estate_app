import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/list.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/utils/style.dart';

class FacilitiesWidget extends StatelessWidget {
  const FacilitiesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .23,
      child: GridView.builder(
        itemCount: facilitiesList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            childAspectRatio: 1.2),
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorUtils.gradient1.withOpacity(.2)),
                child: Center(
                    child: SvgPicture.asset(
                        'assets/images/${facilitiesList[index].image}.svg')),
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .007),
              Text(
                facilitiesList[index].text,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: textStyle.copyWith(
                    fontSize: 12, color: ColorUtils.contentPrimary),
              )
            ],
          );
        },
      ),
    );
  }
}
