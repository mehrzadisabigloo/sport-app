import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:progressive_cached_network_image_cdn/image_widgets.dart';
import 'package:shimmer/shimmer.dart';


import '../bloc/league_bloc.dart';
import '../../../feature_team_next_match/presentation/bloc/team_next_match_bloc.dart';
import '../../../feature_team_next_match/presentation/screens/team_next_match.dart';

class Standing extends StatefulWidget {
  const Standing({super.key});

  @override
  State<Standing> createState() => _StandingState();
}

class _StandingState extends State<Standing> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LeagueBloc, LeagueState>(
      listener: (context, state) {
      },
      builder: (context, state) {
        if(state is Loaded){
          return ListView.builder(
            itemBuilder: (context,index){
              return Card(
                elevation:1,
                // shadowColor: Colors.blue,
                color: Colors.transparent,
                surfaceTintColor: Colors.blue[900]?.withOpacity(0.3),
                // color: Colors.blue[900]?.withOpacity(0.2),
                margin: const EdgeInsets.symmetric(vertical: 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                ),
                child: InkWell(
                  onTap: () {
                    BlocProvider.of<TeamNextMatchBloc>(context).add(NextMatchFetch(state.standingEntity.data![0].leaguetable!.l![0].tables![0].team![index].teamid.toString()));
                    Navigator.push(context, MaterialPageRoute(builder: (context) => TeamNextMatchPage(teamName: state.standingEntity.data![0].leaguetable!.l![0].tables![0].team![index].teamname.toString(),)));
                    },
                  child: ListTile(
                    leading: Text(state.standingEntity.data![0].leaguetable!.l![0].tables![0].team![index].rank.toString(),style: GoogleFonts.oswald(
                        fontSize: 12
                    )),
                    title: Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Row(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: CachedNetworkImageCDN(
                                state.standingEntity.data![0].leaguetable!.l![0].tables![0].team![index].badgesource.toString(),
                                width: 35,
                                height: 35,
                                errorWidget: (context, url, error) => const Icon(Icons.people_alt_outlined),
                              )
                          ),
                          const SizedBox(width: 10,),
                          Flexible(
                            fit: FlexFit.tight,
                            child: Text(state.standingEntity.data![0].leaguetable!.l![0].tables![0].team![index].teamname.toString(),style: GoogleFonts.oswald(
                                fontSize: 16
                            )),
                          )
                        ],
                      ),
                    ),
                    trailing: Text(state.standingEntity.data![0].leaguetable!.l![0].tables![0].team![index].pointsstring.toString(),style: GoogleFonts.oswald(
                        fontSize: 15
                    )),
                  ),
                ),
              );

            },
            itemCount: state.standingEntity.data![0].leaguetable?.l![0].tables![0].team!.length,
          );

        }
        if(state is Loading){
          return SizedBox(
            // color: Colors.amber,
            height: MediaQuery.of(context).size.height,
            child: Shimmer.fromColors(
              baseColor: Colors.grey,
              highlightColor: Colors.white10,
              child: ListView.builder(
                itemBuilder: (context, index){
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10,left: 10,top: 10),
                        child: CircleAvatar(
                          radius: 30,

                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 100,
                            height: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white
                            ),
                          ),
                          Container(
                            width: 60,
                            height: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white
                            ),
                          ),
                        ],
                      )
                    ],
                  );

                },
                itemCount: 10,
              ),
            ),
          );
        }
        if(state is Failed){
          return Center(
            child: Text(state.error),
          );
        }

        return Container();
      },
    );
  }
}
