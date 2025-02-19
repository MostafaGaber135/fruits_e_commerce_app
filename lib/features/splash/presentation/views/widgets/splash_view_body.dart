import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/services/shared_preferences_singleton.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/features/auth/presentations/views/login_view.dart';
import 'package:fruits_hub/features/on_boarding/presentation/views/on_boarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    executeNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment:Localizations.localeOf(context).languageCode == 'ar'
      ? MainAxisAlignment.end
      : MainAxisAlignment.start,
            children: [
              SvgPicture.asset(Assets.assetsImagesPlant),
            ],
          ),
          SvgPicture.asset(Assets.assetsImagesLogo),
          SvgPicture.asset(
            Assets.assetsImagesSplashBottom,
            fit: BoxFit.fill,
          ),
        ]);
  }

  void executeNavigation() {
    bool isOnBoardingViewSeen = SharedPreferencesSingleton.getBool(kIsOnBoardingViewSeen);
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        if(isOnBoardingViewSeen){
          Navigator.pushReplacementNamed(context, LoginView.routeName);
        } else{
          Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
        }
      }
    });
  }
}
