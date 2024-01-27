import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:sportapp/features/feature_featured_games/presetation/widgets/featured_match.dart';
import 'package:sportapp/core/widgets/gnav.dart';
import 'package:sportapp/features/feature_live_match/presentation/widgets/live_match.dart';
import 'package:sportapp/features/feature_today_match/presentation/widgets/today_match.dart';
import '../../features/feature_live_match/presentation/bloc/live_match_bloc.dart';
import '../../features/feature_today_match/presentation/bloc/today_match_bloc.dart';
import '../../features/feature_live_match/presentation/screens/live_match_page.dart';
import '../../features/feature_today_match/presentation/screens/today_match_page.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<LiveMatchBloc>(context).add(LiveMatchesFetch());
    BlocProvider.of<TodayMatchBloc>(context).add(TodayMatchesFetch());
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.blue[900]?.withOpacity(0.15),
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0,
        title: Text("Quick Sport",style: GoogleFonts.oswald(fontSize: 25,color: Colors.blue[900]?.withOpacity(0.8)),),
        centerTitle: true,
        leading: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
          child: FaIcon(FontAwesomeIcons.gripLines,size: 20),
        ),

      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.all(0),
        child: BottomNav(),
      ),
      body: LiquidPullToRefresh(

        showChildOpacityTransition: true,
        animSpeedFactor: 4,
        backgroundColor:Colors.blue[900]?.withOpacity(0.4) ,
        color: Colors.blue[900]?.withOpacity(0.2),
        onRefresh: () {
          return Future.delayed(const Duration(seconds: 1),() {
            BlocProvider.of<LiveMatchBloc>(context).add(LiveMatchesFetch());
            BlocProvider.of<TodayMatchBloc>(context).add(TodayMatchesFetch());
          });
        },
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Featured Matches",
                      style: GoogleFonts.oswald(fontSize: 23),
                    ),
                    Text("See All",
                      style: GoogleFonts.oswald(color: Colors.blue[800],fontSize: 16),
                    )
                  ],
                ),
                const SizedBox(height: 15,),
                const FeaturedMatch(),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Live Matches", style: GoogleFonts.oswald(
                        fontSize: 23,

                    ),

                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const LiveMatchPage()));
                      },
                      child: Text("See All",
                        style: GoogleFonts.oswald(color: Colors.blue[800],fontSize: 16),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 15,),
                SizedBox(
                  height: height/3,
                  width: double.infinity,
                  child: const LiveMatch(),
                ),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Today's Matches",
                      style: GoogleFonts.oswald(fontSize: 23),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const TodayMatchPage()));
                        AwesomeNotifications().createNotification(content: NotificationContent(
                            id: 10,
                            channelKey: 'quicksport',
                          title: 'quicksport',
                          body: "this is from quicksport",


                        ),

                        );
                      },
                      child: Text("See All",
                        style: GoogleFonts.oswald(color: Colors.blue[800],fontSize: 16),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 15,),
                SizedBox(
                  width: double.infinity,
                  height: height/3,
                  child: const TodayMatch(),
                ),
                // const SizedBox(height: 500,)
              ],

            ),
          ),
        ),
      ),
    );
  }
}
