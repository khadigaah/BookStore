import 'package:bookly/Features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
  with SingleTickerProviderStateMixin{
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;


  @override
  void initState() {

    super.initState();

    animationController = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 1));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);

      slidingAnimation.addListener(() {
        setState(() {});
      });
        animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [SvgPicture.asset(AssetsInfo.logo,
      height: 60,width: 60,),
      const SizedBox(height: 20,),
      SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }
}