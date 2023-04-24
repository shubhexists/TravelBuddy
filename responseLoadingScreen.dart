// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen>
    with TickerProviderStateMixin {
  late final AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );
    controller.repeat();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Lottie.network(
              "https://assets2.lottiefiles.com/datafiles/AtGF4p7zA8LpP2R/data.json",
              controller: controller,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Generating your itinerary...",
            style: TextStyle(fontSize: 25),
          ),
          const Text(
            "Please wait...",
            style: TextStyle(fontSize: 25),
          )
        ],
      ),
    );
  }
}
