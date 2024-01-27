

import 'dart:ui';

import 'package:delayed_widget/delayed_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuilderWidget extends StatelessWidget {
  const BuilderWidget({super.key});


  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Positioned(
          right: -height /6,
            top: height / 8,
            child: Container(
              height: height/1.5,
              width: width * 1.3,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue[900]?.withOpacity(0.3),
              ),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/4),
                  child: RotatedBox(
                      quarterTurns: 3,
                    child: Text("Get All Inforamtion You Need",style: GoogleFonts.exo(
                      fontSize: width / 20,
                      color: Colors.white.withOpacity(0.2),
                      fontWeight: FontWeight.w700
                    ),),
                  ),
                ),
              ),
            )
        ),
        Positioned(
          left: 0,
            top: height / 10,
            child: DelayedWidget(
              animation: DelayedAnimations.SLIDE_FROM_LEFT,
              animationDuration: const Duration(seconds: 2),
              child: Image.asset(
                "assets/images/messi.png",
                width: width ,
                height: height / 1.8,
              ),
            )
        ),
         Positioned(
          bottom: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
              child: Column(
                children: [
                  Text("Stay Update With Us",style: GoogleFonts.titilliumWeb(
                    color: Colors.blue[900]?.withOpacity(0.4),
                    fontSize: width / 15,
                    fontWeight: FontWeight.w600
                  ),),
                  DelayedWidget(
                    animationDuration: const Duration(seconds: 2),
                    animation: DelayedAnimations.SLIDE_FROM_LEFT,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text("QuickSport",style: GoogleFonts.barlowCondensed(
                        color: Colors.white.withOpacity(0.3),
                        fontSize: width / 15,
                        fontWeight: FontWeight.w600,

                      ),),
                    ),
                  ),
                ],
              ),
            )
        )
      ],
    );
  }
}
