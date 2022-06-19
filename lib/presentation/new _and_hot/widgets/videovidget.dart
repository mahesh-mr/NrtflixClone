import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class videowidget extends StatelessWidget {
  const videowidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(
              "https://www.themoviedb.org/t/p/w355_and_h200_multi_faces/lKSHKIpBfmi3C5dLEJUraLHZdns.jpg",
              fit: BoxFit.cover),
        ),
        Positioned(
            right: 10,
            bottom: 0,
            child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.black.withOpacity(.3),
                child: IconButton(
                    onPressed: () {},
                    icon: const FaIcon(
                      FontAwesomeIcons.volumeXmark,
                      size: 25,
                    )))),
      ],
    );
  }
}