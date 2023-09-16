import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_sage/screens/filter.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/widget/textfield.dart';

class SearchMapScreen extends StatefulWidget {
  const SearchMapScreen({super.key});

  @override
  State<SearchMapScreen> createState() => _SearchMapScreenState();
}

class _SearchMapScreenState extends State<SearchMapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/search.png'),
                fit: BoxFit.fill)),
        child: SafeArea(
          child: Column(
            children: [
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
              Expanded(
                child: Center(
                  child: Image.asset('assets/images/location.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
