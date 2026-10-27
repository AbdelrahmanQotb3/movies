import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:movies/util/colors/app_colors.dart';
import 'package:movies/util/images/app_icons.dart';
import 'package:movies/util/routes/page_type/page_type.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late final Timer _navigationTimer;

  @override
  void initState() {
    super.initState();
    _navigationTimer = Timer(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.of(context).pushReplacementNamed(PageType.home.name);
      }
    });
  }

  @override
  void dispose() {
    _navigationTimer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Image.asset(
          AppIcons.splashLogo,
          width: 200,
          height: 200,
        ).animate(
        ).fadeIn(
          duration: const Duration(seconds: 2),
        ).scale(
          duration: const Duration(seconds: 2),
        ),
      ),
    );
  }
}