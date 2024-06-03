import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:flutter_animator/widgets/zooming_entrances/zoom_in.dart';
import 'package:iconsax/iconsax.dart';
import 'package:interview_test/constants/asset_strings.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            width: double.infinity,
            height: double.infinity,
            ImageAsset.map,
            fit: BoxFit.fill,
          ),
          Positioned(
            top: 300,
            left: 20,
            child: Buildings(),
          ),
          Positioned(
            top: 400,
            right: 30,
            child: Buildings(),
          ),
          Positioned(
            top: 500,
            right: 80,
            child: Buildings(),
          ),
          Positioned(
            bottom: 550,
            left: 150,
            child: Buildings(),
          ),
          Positioned(
            bottom: 250,
            left: 20,
            child: Column(
              children: [
                ZoomIn(
                  preferences: const AnimationPreferences(
                    offset: Duration(milliseconds: 10),
                    duration: Duration(milliseconds: 2500),
                    magnitude: 0.5,
                  ),
                  child: Container(
                    width: 37,
                    height: 37,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.4000000059604645),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.more_horiz_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ZoomIn(
                  preferences: const AnimationPreferences(
                    offset: Duration(milliseconds: 20),
                    duration: Duration(milliseconds: 2500),
                    magnitude: 0.5,
                  ),
                  child: Container(
                    width: 37,
                    height: 37,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.4000000059604645),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Iconsax.direct_up,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 245,
                  padding: const EdgeInsets.all(
                    12,
                  ),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1000),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Iconsax.search_normal,
                              size: 15,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              'Saint Petersburg',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: const Icon(
                    Iconsax.setting_4,
                    size: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Buildings extends StatelessWidget {
  const Buildings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SlideInUp(
      preferences: const AnimationPreferences(
        offset: Duration(milliseconds: 10),
        duration: Duration(milliseconds: 2500),
        magnitude: 0.5,
      ),
      child: Container(
        height: 40,
        width: 40,
        padding: const EdgeInsets.all(5),
        decoration: const BoxDecoration(
          color: Color(0xFFFE9E12),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        child: const Icon(
          Iconsax.buildings,
          color: Colors.white,
          size: 18,
        ),
      ),
    );
  }
}
