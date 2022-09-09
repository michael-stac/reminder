import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reminder/Screen/one_last_thing.dart';
import 'package:reminder/Screen/sucessful.dart';

import '../../Styles/colors.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SizedBox(
        child: FloatingActionButton(
          elevation: 0,
          backgroundColor: const Color(0xff333333),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ScreenOne()));
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 9, right: 9),
            child: Text(
              "CONFIRM",
              style: GoogleFonts.roboto(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "STUDEASY",
          style: TextStyles.bold(14, AppColors.vanadyBlue),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Image(image: AssetImage("assets/images/peeps.png")),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 52,
              ),
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  "Hold on smarty pants!",
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff333333),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              "Let’s get you signed up first.",
              style: GoogleFonts.roboto(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: const Color(0xff4F4F4F),
              ),
            ),
            const SizedBox(
              height: 31,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48),
              child: TextFormField(
                decoration: const InputDecoration(
                  suffixIcon: Icon(
                    Icons.ac_unit,
                    color: Color(0xffDADADA),
                  ),
                  hintText: 'Groot',
                  hintStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff333333),
                      fontFamily: 'Roboto'),
                  isDense: true,
                ),
              ),
            ),
            const SizedBox(
              height: 41,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 48,
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  suffixIcon: Icon(
                    Icons.email,
                    color: Color(0xffDADADA),
                  ),
                  hintText: 'Email',
                  hintStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff333333),
                      fontFamily: 'Roboto'),
                  isDense: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
