import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reminder/Styles/colors.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      bottomNavigationBar: BottomNavigationBar(elevation: 0, items: const [
        BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(FontAwesomeIcons.home),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.photoFilm), label: ''),
        BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.phone), label: '')
      ]),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'STUDEASY',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        "About",
                        style: GoogleFonts.roboto(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.staticLiver),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Get \n Reading!",
                    style: GoogleFonts.playfairDisplay(
                        fontWeight: FontWeight.w700,
                        fontSize: 36,
                        color: AppColors.black),
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  Text(
                    "Your studying intervals have been broken down into several “focus reads”, do your best!",
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: AppColors.black),
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.softBlue,
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    padding: const EdgeInsets.all(20),
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "UPCOMING ACTIVITIES",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                fontSize: 10,
                                color: AppColors.black
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Text(
                            "01",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w700,
                                fontSize: 28,
                                color: AppColors.softBlue),
                          ),
                          title: Text(
                            "COMPLETED",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                fontSize: 6,
                                color: AppColors.gray),
                          ),
                          subtitle: Text(
                            "Focus Read 1",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: AppColors.black,)
                          ),
                          trailing: const Image(
                            image: AssetImage(("assets/images/loading.png")),
                          ),
                        ),
                        ListTile(
                          leading: Text(
                            "02",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w700,
                                fontSize: 28,
                                color: AppColors.softBlue),
                          ),
                          title: Text(
                            "ONGOING",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                fontSize: 6,
                                color: AppColors.gray),
                          ),
                          subtitle: Text(
                            "Focus Read 2",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              color: AppColors.black,),
                          ),
                          trailing: const Image(
                            image: AssetImage(("assets/images/progress.png")),
                          ),
                        ),
                        ListTile(
                          leading: Text(
                            "03",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w700,
                                fontSize: 28,
                                color: AppColors.softBlue),
                          ),
                          title: Text(
                            "NEXT - 1:30pm",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                fontSize: 6,
                                color: AppColors.gray),
                          ),
                          subtitle: Text(
                            "Focus Read 3",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: AppColors.black),
                          ),
                          trailing: const Image(
                            image: AssetImage(("assets/images/downlod.png")),
                          ),
                        ),
                        ListTile(
                          leading: Text(
                            "04",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w700,
                                fontSize: 28,
                                color: AppColors.softBlue),
                          ),
                          title: Text(
                            "LATER - 3:30pm",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                fontSize: 6,
                                color: AppColors.gray),
                          ),
                          subtitle: Text(
                            "Focus Read 4",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: AppColors.black),
                          ),
                          trailing: const Image(
                            image: AssetImage(("assets/images/downlod.png")),
                          ),
                        ),
                        ListTile(
                          leading: Text(
                            "04",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w700,
                                fontSize: 28,
                                color: AppColors.softBlue),
                          ),
                          title: Text(
                            "LATER - 3:30pm",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                fontSize: 6,
                                color: AppColors.gray),
                          ),
                          subtitle: Text(
                            "Focus Read 4",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: AppColors.black),
                          ),
                          trailing: const Image(
                            image: AssetImage(("assets/images/downlod.png")),
                          ),
                        ),
                        ListTile(
                          leading: Text(
                            "05",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w700,
                                fontSize: 28,
                                color: AppColors.softBlue),
                          ),
                          title: Text(
                            "6:00pm",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                fontSize: 6,
                                color: AppColors.gray),
                          ),
                          subtitle: Text(
                            "Focus Read 5",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: AppColors.black),
                          ),
                          trailing: const Image(
                            image: AssetImage(("assets/images/downlod.png")),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
