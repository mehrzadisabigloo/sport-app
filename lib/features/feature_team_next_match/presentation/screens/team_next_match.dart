import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:progressive_cached_network_image_cdn/image_widgets.dart';
import 'package:sportapp/features/feature_head_to_head/presentation/screens/h2h.dart';
import 'package:sportapp/features/feature_line_up/presentation/bloc/line_up_bloc.dart';
import 'package:sportapp/features/feature_line_up/presentation/screens/line_up_page.dart';


import '../../../feature_head_to_head/presentation/bloc/head_to_head_bloc.dart';
import '../bloc/team_next_match_bloc.dart';

class TeamNextMatchPage extends StatefulWidget {
  final String teamName;

  const TeamNextMatchPage({super.key, required this.teamName});

  @override
  State<TeamNextMatchPage> createState() => _TeamNextMatchPageState();
}

class _TeamNextMatchPageState extends State<TeamNextMatchPage> {
  List<String> chips = ["Home LineUp","Away LineUp"];
  var choice = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.blue[900]?.withOpacity(0.15),
        appBar: AppBar(
          title: Text("${widget.teamName}'s Next Match ",
            style: GoogleFonts.oswald(fontSize: 20, color: Colors.white),),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          scrolledUnderElevation: 0,
          leading: IconButton(icon: const Icon(Icons.arrow_back_ios_new_outlined,size: 20,color: Colors.white54,), onPressed: () { Navigator.pop(context); },),
        ),

        body: BlocConsumer<TeamNextMatchBloc, TeamNextMatchState>(
          listener: (context, state) {
            if(state is TeamNextMatchLoaded || state is TeamNextMatchLoading) {
              BlocProvider.of<LineUpBloc>(context).add(LineUpCall((state as TeamNextMatchLoaded).teamNextMatchEntity.data!.event!.matchid.toString(),0));
              BlocProvider.of<HeadToHeadBloc>(context).add(FetchH2h((state).teamNextMatchEntity.data!.event!.matchid.toString()));
            }

          },
          builder: (context, state) {
            if(state is TeamNextMatchLoading){
               return Center(
                 child: LoadingAnimationWidget.stretchedDots(color: Colors.amber, size: 40),
               );
            }
            if(state is TeamNextMatchLoaded){
              if(state.teamNextMatchEntity.data?.event != null){
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 150,
                            height:200,
                            margin: const EdgeInsets.only(right: 20),
                            decoration: BoxDecoration(
                                border: Border.all(color: const Color(0xEC04044B),width: 3),
                                color: const Color(0xFF06162A),
                                borderRadius: BorderRadius.circular(20)
                            ),

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CachedNetworkImageCDN(
                                  state.teamNextMatchEntity.data!.event!.hometeam![0].badgesource.toString(),
                                  width: 50,
                                  height: 50,
                                  errorWidget: (context, url, error) => const Icon(Icons.people_alt_outlined),

                                ),
                                const SizedBox(height: 10,),
                                Text(state.teamNextMatchEntity.data!.event!.hometeam![0].name.toString(),style: GoogleFonts.oswald(),),
                                Text(state.teamNextMatchEntity.data!.event!.hometeam![0].countryname.toString(),style: GoogleFonts.oswald(color: Colors.white30,fontSize: 16),),
                                Text("(Home)",style: GoogleFonts.oswald(fontSize: 15,color: Colors.blue[900]),)
                              ],
                            ),
                          ),
                          Container(
                            width: 150,
                            height: 200,
                            decoration: BoxDecoration(
                                border: Border.all(color: const Color(0xEC04044B),width: 3),
                                color: const Color(0xFF06162A),
                                borderRadius: BorderRadius.circular(20)
                            ),

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CachedNetworkImageCDN(
                                  state.teamNextMatchEntity.data!.event!.awayteam![0].badgesource.toString(),
                                  width: 50,
                                  height: 50,
                                  errorWidget: (context, url, error) => const Icon(Icons.people_alt_outlined),
                                ),
                                const SizedBox(height: 10,),
                                Text(state.teamNextMatchEntity.data!.event!.awayteam![0].name.toString(),style: GoogleFonts.oswald(),),
                                Text(state.teamNextMatchEntity.data!.event!.awayteam![0].countryname.toString(),style: GoogleFonts.oswald(color: Colors.white30,fontSize: 16),),
                                Text("(Away)",style: GoogleFonts.oswald(fontSize: 15,color: Colors.blue[900]),)
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10,),
                      ButtonsTabBar(
                          radius: 20,
                          contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                          labelSpacing: 10,
                          borderColor: Colors.transparent,
                          backgroundColor: const Color(0xFF051D38),
                          unselectedLabelStyle: const TextStyle(color: Color(0xFF103562)),
                          labelStyle: const TextStyle(color: Colors.white),
                          height: 56,
                          unselectedBackgroundColor: Colors.transparent,
                          unselectedBorderColor: Colors.transparent,
                          tabs: [
                            Tab(icon: const FaIcon(FontAwesomeIcons.futbol,size: 20,),child: Text("H2H",style: GoogleFonts.oswald(fontSize: 15),),),
                            Tab(icon: const FaIcon(FontAwesomeIcons.chartLine,size: 20,),child: Text("LineUp",style: GoogleFonts.oswald(fontSize: 15, )),),
                            Tab(icon: const FaIcon(FontAwesomeIcons.circleInfo,size: 20,),child: Text("Info",style: GoogleFonts.oswald(fontSize: 15)),),
                          ]
                      ),
                      const SizedBox(height: 10,),
                      Expanded(
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Color(0xEC0C0C2A),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50),
                              topLeft: Radius.circular(50)
                            )
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: [
                                const SizedBox(height: 10,),
                                const SizedBox(height: 10,),
                                Expanded(
                                  child: TabBarView(
                                    children: <Widget>[
                                      const HeadToHeadList(),
                                      Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Wrap(
                                                  spacing: 9,
                                                  children:
                                                  List.generate(
                                                      chips.length, (index) {
                                                    return ChoiceChip(
                                                      label: Text(chips[index],style: GoogleFonts.oswald(),),
                                                      // avatar: choice == index ? const Icon(Icons.circle_outlined)
                                                      // : const Icon(Icons.circle,color: Color(0xFF06162A),),

                                                      selected:choice == index,
                                                      side: BorderSide.none,
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(20)
                                                      ),

                                                      selectedColor: const Color(0xFF102849),
                                                      backgroundColor: const Color(
                                                          0xFF050D18),
                                                      elevation: 7,
                                                      onSelected: (value){
                                                        setState(() {
                                                          choice = value ? index : choice;
                                                        });
                                                        if(index == 0){
                                                          BlocProvider.of<LineUpBloc>(context).add(LineUpCall((state).teamNextMatchEntity.data!.event!.matchid.toString(),0));
                                                        }
                                                        else if(index == 1){
                                                          BlocProvider.of<LineUpBloc>(context).add(LineUpCall((state).teamNextMatchEntity.data!.event!.matchid.toString(),1));


                                                        }
                                                      },
                                                    );

                                                  }
                                                  )

                                              )
                                            ],
                                          ),
                                          const SizedBox(height: 10,),
                                          const Expanded(child: LineUpPage())
                                        ],
                                      ),
                                      const Center(
                                        child: Icon(Icons.add),
                                      )

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )

                    ],
                  ),
                );
              }
              else{
                return Center(
                  child: Text("There Is No Available Information",style: GoogleFonts.oswald(fontSize: 20),),
                );
              }
            }
            if(state is TeamNextMatchFailed){
              return Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(state.error,style: GoogleFonts.oswald(fontSize: 25),),
                    const Icon(Icons.error,color: Colors.red,size: 25,)
                  ],
                ),
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}

