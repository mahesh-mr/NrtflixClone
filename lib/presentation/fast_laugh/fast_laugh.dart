import 'package:flutter/material.dart';
import 'package:netflix/presentation/fast_laugh/widgets/video_list_item.dart';

class FastLaugh extends StatelessWidget {
   FastLaugh({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: 
         List.generate(20, (index) {
return VideoList(index: index,);
           })
          
        ))
    );
  }
}