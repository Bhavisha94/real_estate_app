import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_sage/screens/filter.dart';
import 'package:house_sage/screens/map.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/list.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/utils/style.dart';
import 'package:house_sage/widget/appbar.dart';
import 'package:house_sage/widget/textfield.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorUtils.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBarWidget.appBar(title: 'Search', context: context),
            SizedBox(
                width: MediaQuery.of(context).size.width,
                child: TextFieldWidget(
                  hintText: 'Search..',
                  obsecure: false,
                  prefix: Padding(
                    padding: const EdgeInsets.only(left: 13, right: 13),
                    child: SvgPicture.asset(
                      'assets/images/search.svg',
                    ),
                  ),
                  suffix: InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Filter())),
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 10),
                        child: SvgPicture.asset(
                            'assets/images/search_suffix.svg')),
                  ),
                )),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            //emptyData(context),
            Text(
              'Recent Search',
              style:
                  textStyle.copyWith(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .005),
            MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: recentSearch.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    minVerticalPadding: 0,
                    dense: true,
                    title: Text(
                      recentSearch[index],
                      style:
                          textStyle.copyWith(color: ColorUtils.contentPrimary),
                    ),
                    trailing: Icon(
                      Icons.close_rounded,
                      color: ColorUtils.contentPrimary,
                      size: 20,
                    ),
                  );
                },
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .01),
            Text(
              'Recent View',
              style:
                  textStyle.copyWith(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Expanded(
                child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: ListView.builder(
                itemCount: recentViewList.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SearchMapScreen())),
                      child: Row(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/${recentViewList[index].image}.png'),
                                    fit: BoxFit.fill)),
                          ),
                          SizeUtils.horizontalSpacing(
                              width: MediaQuery.of(context).size.width * .015),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      recentViewList[index].place,
                                      style: textStyle.copyWith(
                                          fontSize: 10,
                                          color: ColorUtils.contentPrimary),
                                    ),
                                    SvgPicture.asset('assets/images/more.svg')
                                  ],
                                ),
                                SizeUtils.verticalSpacing(
                                    height: MediaQuery.of(context).size.height *
                                        .01),
                                Text(
                                  recentViewList[index].name,
                                  style: textStyle.copyWith(
                                      fontSize: 16,
                                      color: ColorUtils.contentPrimary,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizeUtils.verticalSpacing(
                                    height: MediaQuery.of(context).size.height *
                                        .01),
                                Row(
                                  children: [
                                    Text(
                                      '\$${recentViewList[index].price}/Month',
                                      style: textStyle.copyWith(fontSize: 12),
                                    ),
                                    const Spacer(),
                                    SvgPicture.asset('assets/images/star.svg'),
                                    SizeUtils.horizontalSpacing(width: 5),
                                    Text(
                                      recentViewList[index].rate,
                                      style: textStyle.copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: ColorUtils.yellow),
                                    ),
                                    SizeUtils.horizontalSpacing(width: 5),
                                    Text(
                                      '(${recentViewList[index].total})',
                                      style: textStyle.copyWith(
                                          color: ColorUtils.contentPrimary,
                                          fontSize: 12),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ))
          ],
        ),
      ),
    );
  }

  Expanded emptyData(BuildContext context) {
    return Expanded(
        child: SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/images/empty_search.svg'),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .02),
          Text(
            'No results Found',
            style: textStyle.copyWith(
                color: ColorUtils.contentPrimary,
                fontWeight: FontWeight.w600,
                fontSize: 20),
          ),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .015),
          SizedBox(
              width: 233,
              child: Text(
                'We Couldn\'t Find What you Search try Search again',
                textAlign: TextAlign.center,
                style: textStyle.copyWith(color: ColorUtils.contentSecondary),
              ))
        ],
      ),
    ));
  }
}
