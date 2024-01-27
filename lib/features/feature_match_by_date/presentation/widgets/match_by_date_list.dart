import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:progressive_cached_network_image_cdn/image_widgets.dart';

import '../bloc/match_by_date_bloc.dart';

class MatchByDayList extends StatefulWidget {
  const MatchByDayList({super.key});

  @override
  State<MatchByDayList> createState() => _TodayMatchState();
}

class _TodayMatchState extends State<MatchByDayList> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return BlocConsumer<MatchByDateBloc, MatchByDateState>(
      listener: (context, state) {
      },
      builder: (context, state) {
        if(state is MatchByDateLoading){
          return Center(
            child: LoadingAnimationWidget.stretchedDots(color: const Color(
                0xEC1717A4), size: 40),
          );
        }
        if(state is MatchByDateLoaded){
          if(state.matchByDateEntity.data != null){
            if(state.matchByDateEntity.data!.isNotEmpty){

              return ListView.builder(
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  String dateTimeString = state.matchByDateEntity.data![index].events![0].matchstartdate.toString();
                  DateTime dateTime = DateTime.parse(dateTimeString);
                  String time = DateFormat('HH:mm').format(dateTime);
                  if(state.matchByDateEntity.data![index].events![0].matchstatus == "NS"){
                    return Container(
                      width: width,
                      height: height/3,
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                          color: Colors.blue[900]?.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                        child: Row(
                          children: [
                            Container(
                              width: 100,
                              decoration:BoxDecoration(
                                  color: Colors.blue[900]?.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(40)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 5),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    CachedNetworkImageCDN(
                                      state.matchByDateEntity.data![index].events![0].hometeam![0].badgesource.toString(),
                                      width: 50,
                                      height: 50,
                                      errorWidget: (context, url, error) => const Icon(Icons.people_alt_outlined),

                                    ),
                                    if(state.matchByDateEntity.data![index].competitiondescription != null)
                                      Text(state.matchByDateEntity.data![index].competitiondescription.toString(),style: GoogleFonts.oswald(fontSize: 18,color: Colors.white),),
                                    CachedNetworkImageCDN(
                                      state.matchByDateEntity.data![index].events![0].awayteam![0].badgesource.toString(),
                                      width: 50,
                                      height: 50,
                                      errorWidget: (context, url, error) => const Icon(Icons.people_alt_outlined),

                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Expanded(
                              child:Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(state.matchByDateEntity.data![index].events![0].hometeam![0].name.toString(),style: GoogleFonts.oswald(fontSize: 18),),
                                  Text("(${state.matchByDateEntity.data![index].events![0].hometeam![0].abbreviation.toString()})",style: GoogleFonts.oswald(fontSize: 18,color: Colors.blue[900]),),
                                  Text("${state.day} At $time",style: GoogleFonts.oswald(fontSize: 16,color: Colors.white54),),
                                  if(state.matchByDateEntity.data![index].competitionname != null)
                                    Text(state.matchByDateEntity.data![index].competitionname.toString(),style: GoogleFonts.oswald(fontSize: 16,color: Colors.white54),),
                                  Text("(${state.matchByDateEntity.data![index].events![0].awayteam![0].abbreviation.toString()})",style: GoogleFonts.oswald(fontSize: 18,color: Colors.blue[900]),),
                                  Text(state.matchByDateEntity.data![index].events![0].awayteam![0].name.toString(),style: GoogleFonts.oswald(fontSize: 18)),
                                ],
                              ) ,
                            )
                          ],
                        ),
                      ),
                    );
                  }
                  else if(state.matchByDateEntity.data![index].events![0].matchstatus == "FT"){
                    return Container(
                      width: width,
                      height: height/3,
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                          color: Colors.blue[900]?.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                        child: Row(
                          children: [
                            Container(
                              width: 100,
                              decoration:BoxDecoration(
                                  color: Colors.blue[900]?.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(40)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 5),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    CachedNetworkImageCDN(
                                      state.matchByDateEntity.data![index].events![0].hometeam![0].badgesource.toString(),
                                      width: 50,
                                      height: 50,
                                      errorWidget: (context, url, error) => const Icon(Icons.people_alt_outlined),

                                    ),
                                    if(state.matchByDateEntity.data![index].competitiondescription != null)
                                      Text(state.matchByDateEntity.data![index].competitiondescription.toString(),style: GoogleFonts.oswald(fontSize: 18,color: Colors.white),),
                                    CachedNetworkImageCDN(
                                      state.matchByDateEntity.data![index].events![0].awayteam![0].badgesource.toString(),
                                      width: 50,
                                      height: 50,
                                      errorWidget: (context, url, error) => const Icon(Icons.people_alt_outlined),

                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Expanded(
                              child:Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(state.matchByDateEntity.data![index].events![0].hometeam![0].name.toString(),style: GoogleFonts.oswald(fontSize: 18),),
                                  Text("(${state.matchByDateEntity.data![index].events![0].hometeam![0].abbreviation.toString()})",style: GoogleFonts.oswald(fontSize: 18,color: Colors.blue[900]),),
                                  Text(state.matchByDateEntity.data![index].events![0].homescore.toString(),style: GoogleFonts.oswald(fontSize: 16,color: Colors.white54),),
                                  Text("Full Time",style: GoogleFonts.oswald(fontSize: 16,color: Colors.white54),),
                                  Text(state.matchByDateEntity.data![index].events![0].awayscore.toString(),style: GoogleFonts.oswald(fontSize: 16,color: Colors.white54),),
                                  Text("(${state.matchByDateEntity.data![index].events![0].awayteam![0].abbreviation.toString()})",style: GoogleFonts.oswald(fontSize: 18,color: Colors.blue[900]),),
                                  Text(state.matchByDateEntity.data![index].events![0].awayteam![0].name.toString(),style: GoogleFonts.oswald(fontSize: 18)),
                                ],
                              ) ,
                            )
                          ],
                        ),
                      ),
                    );
                  }
                  return null;
                },
                itemCount:state.matchByDateEntity.data!.length,
              );
            }
            return const Center(
              child: Text("No Matches"),
            );
          }
          else{
            return Center(
              child: Text("There Is No Available Information",style: GoogleFonts.oswald(fontSize: 20),),
            );
          }
        }
        if(state is MatchByDateFailed){
          return Center(
            child: Text(state.error),
          );
        }
        return Container(
        );
      },
    );
  }
}
