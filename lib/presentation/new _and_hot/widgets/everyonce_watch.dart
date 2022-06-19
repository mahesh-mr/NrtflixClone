
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/size/size.dart';
import 'package:netflix/presentation/home/custom_buttons.dart';
import 'package:netflix/presentation/new%20_and_hot/widgets/videovidget.dart';

class EveryonesWatch extends StatelessWidget {
  const EveryonesWatch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          height10,
         
                  const Text(
                    "Friends",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                  height10,
                  const Text(
                      " is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to mak"),
                      height20,
                      videowidget(),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Lost\nin\nSpace",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontFamily:GoogleFonts.orbitron().fontFamily,
                              fontWeight: FontWeight.w900, ),),
                              ],
                            ),
                          ),
                          Spacer(),
                          CustomButton( icons: CupertinoIcons.paperplane, title: "Share"),
                            CustomButton(icons: Icons.add, title: "My List"),
                              CustomButton(icons: CupertinoIcons.play_fill, title: "Play"),


                        ],
                      )
                      




        ],
      ),
    );
  }
}
