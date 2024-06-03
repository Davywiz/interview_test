import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:interview_test/constants/asset_strings.dart';
import 'package:flutter_animator/flutter_animator.dart';

import 'helpers/nav_bar_buttons.dart';
import 'widgets/top_column.dart';

class HomePage extends HookWidget {
  const HomePage({super.key});
  static String get routeName => 'home';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState(2);
    return Scaffold(
      backgroundColor: const Color(0xFFE0D8BE),
      body: Stack(
        children: [
          listedElements[selectedIndex.value].shownWidget,
          Positioned(
            bottom: 16,
            left: 40,
            right: 40,
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                height: 56,
                decoration: BoxDecoration(
                  color: const Color(0xFF2B2B2B),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    listedElements.length,
                    (index) => GestureDetector(
                      onTap: () {
                        selectedIndex.value = index;
                      },
                      child: Container(
                        height: 35,
                        width: 35,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: selectedIndex.value == index
                              ? const Color(0xffFC9F08)
                              : null,
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset(
                          listedElements[index].svgName,
                        ),
                      ),
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TopColumn(),
                SizedBox(
                  height: 18,
                ),
                FadeInUp(
                  preferences: const AnimationPreferences(
                    magnitude: 0.5,
                    duration: Duration(milliseconds: 2500),
                    offset: Duration(milliseconds: 50),
                  ),
                  child: Text(
                    'Hi, Marina',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF9D9281),
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                FadeInUp(
                  preferences: const AnimationPreferences(
                    magnitude: 0.5,
                    duration: Duration(milliseconds: 2500),
                    offset: Duration(milliseconds: 20),
                  ),
                  child: const SizedBox(
                    width: 257,
                    child: Text(
                      'let’s select your perfect place',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ZoomIn(
                        preferences: const AnimationPreferences(
                          offset: Duration(milliseconds: 50),
                          duration: Duration(milliseconds: 3000),
                          magnitude: 0.5,
                        ),
                        child: Container(
                          padding: const EdgeInsets.only(
                            top: 18,
                            left: 39,
                            right: 39,
                            bottom: 55,
                          ),
                          decoration: const BoxDecoration(
                            color: Color(0xFFFC9F13),
                            shape: BoxShape.circle,
                          ),
                          child: const Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'BUY',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 19),
                              SizedBox(
                                width: double.infinity,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '1 034',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
                                    const SizedBox(height: 1),
                                    Text(
                                      'offers',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 23,
                    ),
                    Expanded(
                      child: ZoomIn(
                        preferences: const AnimationPreferences(
                          offset: Duration(milliseconds: 100),
                          duration: Duration(milliseconds: 3000),
                          magnitude: 0.5,
                        ),
                        child: Container(
                          padding: const EdgeInsets.only(
                            top: 15,
                            left: 42,
                            right: 42,
                            bottom: 54,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'RENT',
                                style: TextStyle(
                                  color: Color(0xFF9D9281),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 23),
                              Container(
                                width: double.infinity,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '2 212',
                                      style: TextStyle(
                                        color: Color(0xFF9D9281),
                                        fontSize: 30,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const SizedBox(height: 1),
                                    Text(
                                      'offers',
                                      style: TextStyle(
                                        color: Color(0xFF9D9281),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(6),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              child: FadeInUp(
                preferences: const AnimationPreferences(
                  magnitude: 0.7,
                  duration: Duration(milliseconds: 2500),
                  offset: Duration(milliseconds: 0),
                ),
                child: ListView(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 171,
                      padding: const EdgeInsets.only(
                        top: 118,
                        left: 13,
                        right: 13,
                        bottom: 13,
                      ),
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(ImageAsset.image1),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const TapView(),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    GridView.count(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 15,
                      childAspectRatio: 0.8,
                      children: [
                        ImageAsset.image2,
                        ImageAsset.image3,
                        ImageAsset.image3,
                        ImageAsset.image2,
                      ]
                          .map(
                            (e) => Container(
                              padding: EdgeInsets.only(
                                  bottom: 20, left: 8, right: 8),
                              clipBehavior: Clip.antiAlias,
                              alignment: Alignment.bottomCenter,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: AssetImage(e),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: SlideInLeft(
                                preferences: const AnimationPreferences(
                                  magnitude: 0.6,
                                  duration: Duration(milliseconds: 1800),
                                  offset: Duration(milliseconds: 150),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFCEB9A4).withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        'Gladkova St., 25',
                                        style: TextStyle(
                                          color: Color(0xFF251C1C),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      const Spacer(),
                                      Container(
                                        width: 40,
                                        height: 40,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0x3F000000),
                                              blurRadius: 8,
                                              offset: Offset(-2, 4),
                                              spreadRadius: 0,
                                            )
                                          ],
                                        ),
                                        child: const Icon(
                                          Icons.chevron_right_rounded,
                                          size: 14,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TapView extends StatelessWidget {
  const TapView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SlideInLeft(
      preferences: const AnimationPreferences(
        magnitude: 0.6,
        duration: Duration(milliseconds: 1800),
        offset: Duration(milliseconds: 150),
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFCEB9A4).withOpacity(0.8),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Spacer(),
            const Text(
              'Gladkova St., 25',
              style: TextStyle(
                color: Color(0xFF251C1C),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 8,
                    offset: Offset(-2, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: const Icon(
                Icons.chevron_right_rounded,
                size: 14,
              ),
            )
          ],
        ),
      ),
    );
  }
}
