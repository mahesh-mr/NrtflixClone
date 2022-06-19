// ignore_for_file: unnecessary_const

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/font/font.dart';
import 'package:netflix/core/size/size.dart';
import 'package:netflix/presentation/home/custom_buttons.dart';
import 'package:netflix/presentation/new%20_and_hot/widgets/videovidget.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          SizedBox(
            width: 50,
            height: 450,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text("JUN",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white60)),
                Text(
                  "06",
                  style: TextStyle(
                      fontFamily: hedline, fontSize: 27, letterSpacing: 2),
                )
              ],
            ),
          ),
          SizedBox(
            height: 450,
            width: size.width - 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                videowidget(),
                Row(
                  children: [
                    Text("Evil",
                        style: TextStyle(
                            fontFamily: GoogleFonts.orbitron().fontFamily,
                            fontWeight: FontWeight.w900,
                            fontSize: 60)),
                    const Spacer(),
                    const CustomButton(
                      icons: Icons.notifications_none_outlined,
                      title: 'Remind Me',
                    ),
                    height20,
                    const CustomButton(
                        icons: CupertinoIcons.info, title: "Info"),
                    height20
                  ],
                ),
                height10,
                const Text(
                  "Coming on Friday",
                  style: const TextStyle(fontWeight: FontWeight.w900),
                ),
                height10,
                netflixlog(),
                height10,
                const Text(
                  "Evil",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
                height10,
                const Text(
                    " is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to mak")
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container netflixlog() {
    return Container(
      height: 15,
      width: 55,
      color: Color.fromARGB(255, 2, 2, 61),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            "assets/lognet.png",
            width: 15,
          ),
          const Text(
            "FLIM",
            style: TextStyle(letterSpacing: 1),
          ),
        ],
      ),
    );
  }
}


