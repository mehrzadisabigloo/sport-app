import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:progressive_cached_network_image_cdn/image_widgets.dart';
import '../bloc/today_match_bloc.dart';

class TodayMatchList extends StatefulWidget {
  const TodayMatchList({super.key});

  @override
  State<TodayMatchList> createState() => _TodayMatchState();
}

class _TodayMatchState extends State<TodayMatchList> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return BlocConsumer<TodayMatchBloc, TodayMatchState>(
      listener: (context, state) {
      },
      builder: (context, state) {
        if(state is TodayMatchLoading){
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if(state is TodayMatchLoaded){
          if(state.todayEntity.data != null){
            if(state.todayEntity.data!.isNotEmpty){
              return ListView.separated(
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  String dateTimeString = state.todayEntity.data![index].events![0].matchstartdate.toString();
                  DateTime dateTime = DateTime.parse(dateTimeString);
                  String time = DateFormat('HH:mm:ss').format(dateTime);
                  if(state.todayEntity.data![index].events![0].matchstatus == "NS"){
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if(index == 0)
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                            child: Text("${state.todayEntity.data!.length.toString()} Matches Are Taking Place⚽",style: GoogleFonts.oswald(fontSize: 22,color: Colors.white54),),
                          ),
                        Container(
                          width: width,
                          height: height/3,
                          margin: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                          decoration: BoxDecoration(
                              color: Colors.blue[900]?.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(35)
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
                                          state.todayEntity.data![index].events![0].hometeam![0].badgesource.toString(),
                                          width: 50,
                                          height: 50,
                                          errorWidget: (context, url, error) => const Icon(Icons.people_alt_outlined),

                                        ),
                                        if(state.todayEntity.data![index].competitiondescription != null)
                                          Text(state.todayEntity.data![index].competitiondescription.toString(),style: GoogleFonts.oswald(fontSize: 18,color: Colors.white),),
                                        CachedNetworkImageCDN(
                                          state.todayEntity.data![index].events![0].awayteam![0].badgesource.toString(),
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
                                      Text(state.todayEntity.data![index].events![0].hometeam![0].name.toString(),style: GoogleFonts.oswald(fontSize: 18),),
                                      Text("(${state.todayEntity.data![index].events![0].hometeam![0].abbreviation.toString()})",style: GoogleFonts.oswald(fontSize: 18,color: Colors.blue[900]),),
                                      Text("Today At $time",style: GoogleFonts.oswald(fontSize: 16,color: Colors.white54),),
                                      if(state.todayEntity.data![index].competitionname != null)
                                        Text(state.todayEntity.data![index].competitionname.toString(),style: GoogleFonts.oswald(fontSize: 16,color: Colors.white54),),
                                      Text("(${state.todayEntity.data![index].events![0].awayteam![0].abbreviation.toString()})",style: GoogleFonts.oswald(fontSize: 18,color: Colors.blue[900]),),
                                      Text(state.todayEntity.data![index].events![0].awayteam![0].name.toString(),style: GoogleFonts.oswald(fontSize: 18)),
                                    ],
                                  ) ,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  }
                  else if(state.todayEntity.data![index].events![0].matchstatus == "FT"){

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if(index == 0)
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                            child: Text("${state.todayEntity.data!.length.toString()} Matches Are Taking Place⚽",style: GoogleFonts.oswald(fontSize: 24,color: Colors.white),),
                          ),
                        Container(
                          width: width,
                          height: height/3,
                          margin: const EdgeInsets.symmetric(vertical: 5,horizontal:10 ),
                          decoration: BoxDecoration(
                              color: Colors.blue[900]?.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(35)
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
                                          state.todayEntity.data![index].events![0].hometeam![0].badgesource.toString(),
                                          width: 50,
                                          height: 50,
                                          errorWidget: (context, url, error) => const Icon(Icons.people_alt_outlined),

                                        ),
                                        if(state.todayEntity.data![index].competitiondescription != null)
                                          Text(state.todayEntity.data![index].competitiondescription.toString(),style: GoogleFonts.oswald(fontSize: 18,color: Colors.white),),
                                        CachedNetworkImageCDN(
                                          state.todayEntity.data![index].events![0].awayteam![0].badgesource.toString(),
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
                                      Text(state.todayEntity.data![index].events![0].hometeam![0].name.toString(),style: GoogleFonts.oswald(fontSize: 18),),
                                      Text("(${state.todayEntity.data![index].events![0].hometeam![0].abbreviation.toString()})",style: GoogleFonts.oswald(fontSize: 18,color: Colors.blue[900]),),
                                      Text(state.todayEntity.data![index].events![0].homescore.toString(),style: GoogleFonts.oswald(fontSize: 16,color: Colors.white54),),
                                      Text("Full Time",style: GoogleFonts.oswald(fontSize: 16,color: Colors.white54),),
                                      Text(state.todayEntity.data![index].events![0].awayscore.toString(),style: GoogleFonts.oswald(fontSize: 16,color: Colors.white54),),
                                      Text("(${state.todayEntity.data![index].events![0].awayteam![0].abbreviation.toString()})",style: GoogleFonts.oswald(fontSize: 18,color: Colors.blue[900]),),
                                      Text(state.todayEntity.data![index].events![0].awayteam![0].name.toString(),style: GoogleFonts.oswald(fontSize: 18)),
                                    ],
                                  ) ,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  }
                  return null;
                },
                itemCount:state.todayEntity.data!.length,
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    color: Colors.blue[900],
                    indent: 50,
                    endIndent: 50,
                  );
                },
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
        if(state is TodayMatchFailed){
          return Center(
            child: Text(state.error),
          );
        }
        return Container();
      },
    );
  }
}
