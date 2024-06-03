import 'package:flutter/material.dart';
import 'package:interview_test/constants/asset_strings.dart';
import 'package:interview_test/screens/home/home.dart';
import 'package:interview_test/screens/home/profile.dart';

class NavBarHolder {
  final String svgName;
  final Widget shownWidget;
  NavBarHolder({
    required this.svgName,
    required this.shownWidget,
  });
}

final listedElements = [
  NavBarHolder(
    svgName: SvgAsset.search,
    shownWidget: SearchView(),
  ),
  NavBarHolder(
    svgName: SvgAsset.chat,
    shownWidget: Container(),
  ),
  NavBarHolder(
    svgName: SvgAsset.home,
    shownWidget: const HomeWidget(),
  ),
  NavBarHolder(
    svgName: SvgAsset.heart,
    shownWidget: Container(),
  ),
  NavBarHolder(
    svgName: SvgAsset.profile,
    shownWidget: Container(),
  ),
];
