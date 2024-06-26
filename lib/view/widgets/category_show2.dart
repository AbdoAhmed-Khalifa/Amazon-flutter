import 'package:chat/utils/colors.dart';
import 'package:flutter/material.dart';

import '../../utils/size_config.dart';

// ignore: must_be_immutable
class CategoryShowWedget2 extends StatelessWidget {
  String? title;
  List<String>? imageUrl;
  String? buttonText;
  // int? crossCount;
  // double? crossAxisSpacing;
  // double? childAspectRatio;
  // double? mainAxisSpacing;
  CategoryShowWedget2({
    super.key,
    this.title,
    this.imageUrl,
    this.buttonText,
    // required this.crossCount,
    // this.crossAxisSpacing,
    // this.childAspectRatio,
    // this.mainAxisSpacing,
  });

  @override
  Widget build(BuildContext context) {
    //MediaQueryData mediaQuery = const MediaQueryData();
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Container(
        width: MySizeConfig.safeBlockHorizontal! * 100,
        height: MySizeConfig.safeBlockVerticalWithAppBar! * 75,
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title!,
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.w100),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: MySizeConfig.safeBlockHorizontal! * 97,
                    height: MySizeConfig.safeBlockVerticalWithAppBar! * 52,
                    child: GridView(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 3,
                        childAspectRatio: 1,
                        mainAxisSpacing: 3,
                      ),
                      children: [
                        Image.asset(imageUrl![0]),
                        Image.asset(imageUrl![1]),
                        Image.asset(imageUrl![2]),
                        Image.asset(imageUrl![3]),
                        // if you have image without background
                        // Container(
                        //     width: 50,
                        //     height: 50,
                        //     color: Colors.grey[300],

                        //  Image.asset('assets/images/p1.JPG'),
                        //   Image.asset('assets/images/p2.JPG'),
                        //   Image.asset('assets/images/helth3.JPG'),
                        //   Image.asset('assets/images/helth4.JPG'),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 7),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    buttonText!,
                    style: TextStyle(
                        color: MyColors.mainColor, fontWeight: FontWeight.w100),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


/*
Column(
          children: [
            Column(
              children: [
                Text(
                  'Heals & Beauty Products',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w100),
                ),
                GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  children: [
                    Image.asset('assets/images/p1.png'),
                    Image.asset('assets/images/p2.png'),
                    Image.asset('assets/images/p3.png'),
                    Image.asset('assets/images/p4.png'),
                    Image.asset('assets/images/p5.png'),
                    Image.asset('assets/images/p6.png'),
                    Image.asset('assets/images/p7.png'),
                    Image.asset('assets/images/p8.png'),
                    Image.asset('assets/images/p9.png'),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 7),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'See more',
                  style: TextStyle(
                      color: MyColors.mainColor, fontWeight: FontWeight.w100),
                ),
              ),
            ),
          ],
        ),
 */