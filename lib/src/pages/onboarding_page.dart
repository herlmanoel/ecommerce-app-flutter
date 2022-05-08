import 'package:ecommerce_app/src/shared/images/app_images.dart';
import 'package:ecommerce_app/src/shared/style/color_app.dart';
import 'package:ecommerce_app/src/shared/style/text_app.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  final LinearGradient _linearGradient = const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      AppColor.snappyViolet,
      AppColor.grimPurple,
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(gradient: _linearGradient),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(left: 50, top: 20),
                child: Stack(children: [
                  Column(children: <Widget>[
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        "CYBER\nLINIO",
                        style: TextApp.titleOnboarding,
                      ),
                    ),
                    textSubtitle(),
                  ]),
                  Positioned(
                      left: MediaQuery.of(context).size.width * 0.23,
                      top: MediaQuery.of(context).size.height * 0.04,
                      child: AppImages.lightning),
                ]),
              ),
              Center(
                  child: Transform.scale(
                      scale: 0.9, child: AppImages.productsOnboarding)),
              InkWell(
                  onTap: () {},
                  child: Container(
                    height: 56,
                    width: MediaQuery.of(context).size.width * 0.7,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Center(
                        child: Text(
                      "LOGIN",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: AppColor.mysticRed),
                    )),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox textSubtitle() {
    return SizedBox(
      child: Column(
        children: <Widget>[
          Row(
            children: const [
              Text("40%",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              Text("DCTO", style: TextStyle(fontSize: 20, color: Colors.white)),
            ],
          ),
          const SizedBox(
            width: double.infinity,
            child: Text("in technology",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            width: double.infinity,
            child: Text("FREE SHOPPING",
                style: TextStyle(fontSize: 15, color: AppColor.maximumYellow)),
          ),
        ],
      ),
    );
  }
}
