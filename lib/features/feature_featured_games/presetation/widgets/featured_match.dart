
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sportapp/features/feature_live_match/presentation/bloc/live_match_bloc.dart';

class FeaturedMatch extends StatefulWidget {
  const FeaturedMatch({super.key});

  @override
  State<FeaturedMatch> createState() => _FeaturedMatchState();
}

class _FeaturedMatchState extends State<FeaturedMatch> {
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LiveMatchBloc, LiveMatchState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        if(state is LiveMatchLoading){
          return Center(
            child: LoadingAnimationWidget.stretchedDots(color: const Color(
                0xEC1A1AB4), size: 40),
          );
        }
        if(state is LiveMatchLoaded){
          return SizedBox(
            width: double.infinity,
            height: 200,
            child: Stack(
              children: [
                PageView(
                  controller: pageController,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage("assets/images/premier.png"),
                            fit: BoxFit.cover,
                          ),
                          color: const Color(0xFF222225),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10,bottom: 11,left: 25,right: 25),
                          child: Column(
                            children: [
                              Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(Icons.stadium_outlined),
                                    const SizedBox(width: 5,),
                                    Text("Arena Stadium",style: GoogleFonts.oswald(),),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10,),
                              Text("Week 10",style: GoogleFonts.oswald(color: Colors.white54)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Image.network("https://lsm-static-prod.livescore.com/high/enet/9825.png",width: 50,),
                                      const SizedBox(height: 5,),
                                      Text("Arsenal",style: GoogleFonts.oswald(fontSize: 20)),
                                      Text("Home",style: GoogleFonts.oswald(color: Colors.white54))
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text("0 : 3",style: GoogleFonts.oswald(fontSize: 18)),
                                      Container(
                                        padding: const EdgeInsets.only(top: 5,bottom: 5,left: 15,right: 15),
                                        decoration:  BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.white10,

                                        ),
                                        child: Center(
                                          child: Text("83",style: GoogleFonts.oswald()),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Image.network("https://lsm-static-prod.livescore.com/high/enet/8456.png",width: 59,),
                                      const SizedBox(height: 5,),
                                      Text("Man City",style: GoogleFonts.oswald(fontSize: 20)),
                                      Text("Away",style: GoogleFonts.oswald(color: Colors.white54))
                                    ],
                                  ),

                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage("assets/images/premier.png"),
                            fit: BoxFit.cover,
                          ),
                          color: const Color(0xFF222225),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10,bottom: 11,left: 25,right: 25),
                          child: Column(
                            children: [
                              Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(Icons.stadium_outlined),
                                    const SizedBox(width: 5,),
                                    Text("Rens Stadium",style: GoogleFonts.oswald(),),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10,),
                              Text("Week 10",style: GoogleFonts.oswald(color: Colors.white54)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Image.network("https://lsm-static-prod.livescore.com/high/enet/10260.png",width: 50,),
                                      const SizedBox(height: 5,),
                                      Text("Man United",style: GoogleFonts.oswald(fontSize: 20)),
                                      Text("Home",style: GoogleFonts.oswald(color: Colors.white54))
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text("Today",style: GoogleFonts.oswald(fontSize: 18)),
                                      Container(
                                        padding: const EdgeInsets.only(top: 5,bottom: 5,left: 15,right: 15),
                                        decoration:  BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.white10,
                                        ),
                                        child: Center(
                                          child: Text("16 : 30",style: GoogleFonts.oswald()),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Image.network("https://lsm-static-prod.livescore.com/high/enet/8586.png",width: 59,),
                                      const SizedBox(height: 5,),
                                      Text("Tottenham",style: GoogleFonts.oswald(fontSize: 20)),
                                      Text("Away",style: GoogleFonts.oswald(color: Colors.white54))
                                    ],
                                  ),

                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage("assets/images/premier.png"),
                            fit: BoxFit.cover,
                          ),
                          color: const Color(0xFF222225),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10,bottom: 11,left: 25,right: 25),
                          child: Column(
                            children: [
                              Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(Icons.stadium_outlined),
                                    const SizedBox(width: 5,),
                                    Text("West Stadium",style: GoogleFonts.oswald(),),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10,),
                              Text("Week 10",style: GoogleFonts.oswald(color: Colors.white54)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Image.network("https://lsm-static-prod.livescore.com/high/enet/8650.png",width: 50,),
                                      const SizedBox(height: 5,),
                                      Text("Liverpool",style: GoogleFonts.oswald(fontSize: 20)),
                                      Text("Home",style: GoogleFonts.oswald(color: Colors.white54))
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text("2 : 3",style: GoogleFonts.oswald(fontSize: 18)),
                                      Container(
                                        padding: const EdgeInsets.only(top: 5,bottom: 5,left: 15,right: 15),
                                        decoration:  BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.white10,
                                        ),
                                        child: Center(
                                          child: Text("12",style: GoogleFonts.oswald()),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Image.network("https://lsm-static-prod.livescore.com/high/enet/10204.png",width: 59,),
                                      const SizedBox(height: 5,),
                                      Text("Brighton",style: GoogleFonts.oswald(fontSize: 20)),
                                      Text("Away",style: GoogleFonts.oswald(color: Colors.white54))
                                    ],
                                  ),

                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: SmoothPageIndicator(
                      controller: pageController,
                      count: 3,
                      onDotClicked: (index){
                        pageController.animateToPage(index, duration: const Duration(seconds: 1), curve: Curves.easeIn);
                      },
                      effect: const ExpandingDotsEffect(
                          dotWidth: 10,
                          dotHeight: 10,
                          dotColor: Colors.white,
                          activeDotColor: Color(0xEC1A1AB4)
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        }
        return Container();
      },
    );
  }
}
