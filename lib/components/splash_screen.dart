import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medresto/constants/app_constants.dart';
import 'package:medresto/features/categories/ui/categories_screen.dart';
import 'package:medresto/features/landscreen/ui/land_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LandScreen(),
          )),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.group,
                  size: AppConstants.getScreenWidth(context) * 0.2),
              Text(
                AppConstants.appName,
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
