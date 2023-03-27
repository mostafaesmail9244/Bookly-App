import 'package:booklyapp/constants.dart';
import 'package:booklyapp/core/utils/assets.dart';
import 'package:booklyapp/features/home/presentation/views/home_viewd.dart';
import 'package:booklyapp/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(AssetsData.logo),
            const SizedBox(
              height: 5,
            ),
            SlidingText(slidingAnimation: slidingAnimation),
          ]),
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 3), end: Offset.zero)
            .animate(animationController);
    // to listen and rebuild screen

    // slidingAnimation.addListener(() {
    //   setState(() {});
    // });
  }

  void navigateToHome() {
    Future.delayed(kDuration, () {
      Get.to(() => const HomeView(),
          transition: Transition.fade, duration: kDuration);
    });
  }
}
