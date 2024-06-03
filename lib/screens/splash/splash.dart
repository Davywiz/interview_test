import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:interview_test/constants/asset_strings.dart';
import 'package:interview_test/screens/home/home.dart';

class SplashScreen extends HookWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      Future.delayed(const Duration(milliseconds: 2800), () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
            settings: RouteSettings(
              name: HomePage.routeLocation,
            ),
          ),
        );
      });

      return;
    }, []);

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            ImageAsset.splashImage,
            fit: BoxFit.fill,
          )
        ],
      ),
    );
  }
}
