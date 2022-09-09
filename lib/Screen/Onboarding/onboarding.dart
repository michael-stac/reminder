import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reminder/Screen/Authentication/sign_up.dart';
import 'package:reminder/Styles/colors.dart';

import '../../Controller/onboarding_controller/onborading_controller.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentIndex = 0;
  final controller = OnboardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xffEDF5FF),
        onPressed: () {
         Navigator.push(context, MaterialPageRoute(builder: (context) =>RegisterPage()));
        },
        child: Text(
          "Next",
          style: GoogleFonts.roboto(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: const Color(0xff4F4F4F),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          TextButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 42),
                child: Text(
                  "SKIP",
                  style: GoogleFonts.roboto(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff4F4F4F),
                  ),
                ),
              ))
        ],
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 41),
          child: Text(
            "STUDEASY",
            style: TextStyles.bold(
              14,
                AppColors.vanadyBlue
            ),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(
            left: 46.59, right: 46.59, top: 37, bottom: 37),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                  itemCount: controller.OnboardingPages.length,
                  onPageChanged: (value) {
                    setState(() {
                      currentIndex = value;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Image.asset(
                          controller.OnboardingPages[index].ImageAssets,
                        ),
                        const SizedBox(height: 20),
                        Text(
                          controller.OnboardingPages[index].title,
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 24,
                              color: const Color(0xff333333),
                              fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Text(
                            controller.OnboardingPages[index].description,
                            style: GoogleFonts.roboto(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff333333),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    );
                  }),
            ),
            const SizedBox(height: 10),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
