import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_sage/screens/drawer.dart';
import 'package:house_sage/screens/featured_screen.dart';
import 'package:house_sage/screens/recommendation_screen.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/list.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/utils/style.dart';
import 'package:house_sage/widget/featured_list.dart';
import 'package:house_sage/widget/notification.dart';
import 'package:house_sage/widget/recommendation.dart';
import 'package:house_sage/widget/recommendation_item_widget.dart';
import 'package:house_sage/widget/textfield.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int recommendationIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const DrawerScreen(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                  leading: InkWell(
                    onTap: () => _scaffoldKey.currentState!.openDrawer(),
                    child: Image.asset(
                      'assets/images/profile_img.png',
                      width: 50,
                      height: 50,
                      fit: BoxFit.fill,
                    ),
                  ),
                  title: Text(
                    'Hi Adnan',
                    style: textStyle.copyWith(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: ColorUtils.contentPrimary),
                  ),
                  subtitle: Text(
                    'Welcome 👋',
                    style: textStyle.copyWith(color: ColorUtils.mainColor),
                  ),
                  trailing: const NotificationWidget()),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .015),
              SizedBox(
                  width: MediaQuery.of(context).size.width * .9,
                  child: TextFieldWidget(
                    hintText: 'Search..',
                    obsecure: false,
                    prefix: Padding(
                      padding: const EdgeInsets.only(left: 13, right: 13),
                      child: SvgPicture.asset(
                        'assets/images/search.svg',
                      ),
                    ),
                    suffix: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 10),
                        child: SvgPicture.asset(
                            'assets/images/search_suffix.svg')),
                  )),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .015),
              title(context, 'Featured', () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const FeaturedScreen()));
              }),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .015),
              const FeaturedList(),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .015),
              title(context, 'Our Recommendation', () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const RecommendationScreen()));
              }),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .015),
              Recommentdation(recommendationIndex: recommendationIndex),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .015),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                itemCount: recItemList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: .87),
                itemBuilder: (context, index) {
                  return RecommentionItem(recItemList: recItemList[index]);
                },
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .015),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox title(BuildContext context, String title, VoidCallback? onCallBack) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style:
                textStyle.copyWith(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          InkWell(
            onTap: onCallBack,
            child: Text(
              'See All',
              style: textStyle.copyWith(
                  color: ColorUtils.mainColor, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
