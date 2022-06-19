import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/font/font.dart';
import 'package:netflix/core/size/size.dart';
import 'package:netflix/presentation/home/custom_buttons.dart';
import 'package:netflix/presentation/new%20_and_hot/widgets/coming_soon.dart';
import 'package:netflix/presentation/new%20_and_hot/widgets/everyonce_watch.dart';
import 'package:netflix/presentation/new%20_and_hot/widgets/videovidget.dart';
import 'package:netflix/presentation/widgets/wigetappbar.dart';

class NewAndHot extends StatelessWidget {
  const NewAndHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(80),
            child: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              title: Text(
                "New & Hot",
                style: TextStyle(
                    fontFamily: hedline, fontSize: 25, letterSpacing: 2),
              ),
              actions: [
                const Icon(
                  Icons.cast,
                  color: white1,
                ),
                width10,
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: Image.asset('assets/netflix.png'),
                  ),
                ),
              ],
              bottom: TabBar(
                  isScrollable: true,
                  unselectedLabelColor: white1,
                  labelColor: bg,
                  labelStyle:
                      TextStyle(fontWeight: FontWeight.w900, fontSize: 16),
                  indicator: BoxDecoration(color: white1, borderRadius: r20),
                  tabs: [
                    Tab(text: "🍿Coming Soon"),
                    Tab(
                      text: "👀 Everyone's Watching",
                    )
                  ]),
            )),
        body: TabBarView(
            children: [tabBarCommingSoon(),
             tabBarEveryone(),
             ]),
      ),
    );
  }

  Widget tabBarCommingSoon() {
  
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, index)=>ComingSoon()
    );
  }
  


  Widget tabBarEveryone() {
    return  ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, index)=>EveryonesWatch());
  }
}
