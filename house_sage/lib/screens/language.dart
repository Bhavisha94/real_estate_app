import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/utils/style.dart';
import 'package:house_sage/widget/appbar.dart';
import 'package:house_sage/widget/checkbox_widget.dart';
import 'package:house_sage/widget/divider.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  bool english = true;
  bool bangla = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.white,
      appBar: AppBarWidget.backArrowAppBar(title: 'Language', context: context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Recent Language',
                style: textStyle.copyWith(
                    color: ColorUtils.contentSecondary,
                    fontWeight: FontWeight.w600)),
            languageMenu(
              image: 'english',
              title: 'English',
              trailing: CheckboxWidget(
                checkValue: english,
                onChanged: (p0) {
                  setState(() {
                    english = p0!;
                  });
                },
              ),
            ),
            const DividerWidget(),
            languageMenu(
              image: 'bangla',
              title: 'Bangla',
              trailing: CheckboxWidget(
                checkValue: bangla,
                onChanged: (p0) {
                  setState(() {
                    bangla = p0!;
                  });
                },
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Text('All Language',
                style: textStyle.copyWith(
                    color: ColorUtils.contentSecondary,
                    fontWeight: FontWeight.w600)),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            languageMenu(
              image: 'russian',
              title: 'Russian',
            ),
            languageMenu(
              image: 'korean',
              title: 'Korean',
            ),
            languageMenu(
              image: 'spanish',
              title: 'Spanish',
            ),
            languageMenu(
              image: 'turkish',
              title: 'Turkish',
            ),
            languageMenu(
              image: 'germany',
              title: 'Germany',
            ),
            languageMenu(
              image: 'italian',
              title: 'Italian',
            ),
            languageMenu(
              image: 'polish',
              title: 'Polish',
            ),
          ],
        ),
      ),
    );
  }

  ListTile languageMenu({String? image, String? title, Widget? trailing}) {
    return ListTile(
        minVerticalPadding: 0,
        contentPadding: EdgeInsets.zero,
        leading: SvgPicture.asset('assets/images/$image.svg'),
        horizontalTitleGap: 0,
        title: Text(
          title.toString(),
          style: textStyle.copyWith(color: ColorUtils.contentPrimary),
        ),
        trailing: trailing);
  }
}
