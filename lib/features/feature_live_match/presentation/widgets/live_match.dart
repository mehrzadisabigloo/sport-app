import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:progressive_cached_network_image_cdn/image_widgets.dart';

import '../bloc/live_match_bloc.dart';


class LiveMatch extends StatefulWidget {
  const LiveMatch({super.key});
  @override
  State<LiveMatch> createState() => _LiveMatchState();
}

class _LiveMatchState extends State<LiveMatch> {
  double mar = 0;
  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    return BlocConsumer<LiveMatchBloc, LiveMatchState>(
      builder: (context, state) {
        if(state is LiveMatchLoading){
          return Center(
            child: LoadingAnimationWidget.stretchedDots(color: const Color(
                0xEC1A1AB4), size: 40),
          );
        }
        if(state is LiveMatchLoaded){
          if(state.liveMatchEntity.data != null){
            if(state.liveMatchEntity.data!.length > 1){
              mar = 25;
              width = width / 1.2;
            }
            else{
              mar = 0;
              width = width / 1.1;
            }
            if(state.liveMatchEntity.data!.isEmpty){
              return Center(
                child: Text("No Match Is In Progress",style: GoogleFonts.oswald(fontSize:20 ),),
              );
            }
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  width: width,
                  margin: EdgeInsets.only(right: mar),
                  decoration: BoxDecoration(
                      color: Colors.blue[900]?.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width/3.9,
                          decoration:BoxDecoration(
                              color: Colors.blue[900]?.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(40)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,

                                children: [
                                  CachedNetworkImageCDN(
                                    state.liveMatchEntity.data![index].events![0].hometeam![0].badgesource.toString(),
                                    height: 50,
                                    width: 50,
                                    errorWidget: (context, url, error) => const Icon(Icons.people_alt_outlined),
                                  ),
                                  Text(state.liveMatchEntity.data![index].events![0].matchstatus.toString(),style: GoogleFonts.oswald(fontSize: 18),),

                                  CachedNetworkImageCDN(
                                    state.liveMatchEntity.data![index].events![0].awayteam![0].badgesource.toString(),
                                    height: 50,
                                    width: 50,
                                    errorWidget: (context, url, error) => const Icon(Icons.people_alt_outlined),

                                  )
                                ],
                              ),
                            ),
                          ),

                        ),
                        const SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(state.liveMatchEntity.data![index].events![0].hometeam![0].name.toString(),style: GoogleFonts.oswald(fontSize: 18),),
                              Text("(HOME)",style: GoogleFonts.oswald(color: Colors.blue[800]),),

                              if(state.liveMatchEntity.data![index].events?[0].homescore == null)
                                Text("Match Is About To Start",style: GoogleFonts.oswald(fontSize: 15),),

                              if(state.liveMatchEntity.data![index].events?[0].homescore != null)
                                Text(state.liveMatchEntity.data![index].events![0].homescore.toString(),style: GoogleFonts.oswald(fontSize: 18,decoration: TextDecoration.underline),),

                              Text(state.liveMatchEntity.data![index].countryname.toString(),style: GoogleFonts.oswald(fontSize: 16,color: Colors.white54),),

                              if(state.liveMatchEntity.data![index].competitionsds != null)
                                Text(state.liveMatchEntity.data![index].competitionsds.toString(),style: GoogleFonts.oswald(color: Colors.white54,fontSize: 15),),

                              if(state.liveMatchEntity.data![index].events?[0].homescore != null)
                                Text(state.liveMatchEntity.data![index].events![0].awayscore.toString(),style: GoogleFonts.oswald(fontSize: 18,decoration: TextDecoration.underline)),

                              Text("(AWAY)",style: GoogleFonts.oswald(color: Colors.blue[800])),
                              Text(state.liveMatchEntity.data![index].events![0].awayteam![0].name.toString(),style: GoogleFonts.oswald(fontSize: 18)),
                            ],
                          ),
                        )

                      ],
                    ),
                  ),
                );
              },

              itemCount: state.liveMatchEntity.data!.length >= 3 ? 3 : state.liveMatchEntity.data?.length,

            );
          }
          else{
            return Center(
              child: Text("There Is No Available Information",style: GoogleFonts.oswald(fontSize: 20),),
            );
          }
        }
        if(state is LiveMatchFailed){
          return Center(
            child: Text(state.error),
          );
        }
        return Container();
      }, listener: (BuildContext context, LiveMatchState state) {  },
    );
  }
}
