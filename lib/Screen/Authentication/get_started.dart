import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Styles/colors.dart';
import '../one_last_thing.dart';

class TimeScreen extends StatefulWidget {
  const TimeScreen({Key? key}) : super(key: key);

  @override
  State<TimeScreen> createState() => _TimeScreenState();
}

class _TimeScreenState extends State<TimeScreen> {
  final List items = [
    '2 hours',
    '4 hours',
    '6 hours',
    '8 hours',
    '10 hours',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                'STUDEASY',
                style: TextStyles.bold(
                  14,
                    AppColors.vanadyBlue
                ),
              ),
              const SizedBox(height: 40),
               Text('How long Do you Want To Study For?',
                  style: GoogleFonts.playfairDisplay(fontWeight:FontWeight.w700, fontSize: 36, color: const Color(0xff333333) ),
                  maxLines: 3),
              const SizedBox(height: 21),
               Text(
                'Set your target study hours for today. you will be \nprompted at several intervals.',
                style: GoogleFonts.roboto(fontSize: 12, fontWeight: FontWeight.w500, color: const Color(0xff4F4F4F)),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 300,
                child: CupertinoPicker(

                  itemExtent: 64,
                  onSelectedItemChanged: (index) {},
                  selectionOverlay: Container(),
                  children: items
                      .map(
                        (item) => Text(
                          item,
                          style: const TextStyle(fontSize: 38, color: Color(0xff333333)),
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const ScreenOne()));
        },
        backgroundColor: Colors.black,
        child:  Text('Next',  style: GoogleFonts.roboto(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),),
      ),
    );
  }
}
