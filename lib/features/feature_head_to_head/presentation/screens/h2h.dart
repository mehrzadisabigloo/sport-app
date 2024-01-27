import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:progressive_cached_network_image_cdn/image_widgets.dart';
import 'package:sportapp/core/utils/date.dart';
import '../bloc/head_to_head_bloc.dart';


class HeadToHeadList extends StatefulWidget {
  const HeadToHeadList({super.key});

  @override
  State<HeadToHeadList> createState() => _HeadToHeadListState();
}

class _HeadToHeadListState extends State<HeadToHeadList> {
  DaysDateTime daysDateTime = DaysDateTime();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HeadToHeadBloc, HeadToHeadState>(
      listener: (context, state) {
      },
      builder: (context, state) {
        if(state is HeadToHeadLoading){
          return Center(
            child: LoadingAnimationWidget.stretchedDots(color: Colors.amber, size: 40),
          );
        }
        if(state is HeadToHeadLoaded){
          if(state.headToHeadEntity.data?.h2heventskey != null){
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text("Head To Head Matches :",style: GoogleFonts.oswald(fontSize: 20,color: Colors.white54),),
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 3,

                    decoration: BoxDecoration(color: const Color(0xEC070765),borderRadius: BorderRadius.circular(200)),
                  ),
                ),
                const SizedBox(height: 10,),
                Expanded(
                    child: SizedBox(
                      child: ListView.builder(
                          itemCount: state.headToHeadEntity.data!.h2heventskey!.length> 10 ? 10 : state.headToHeadEntity.data?.h2heventskey?.length,
                          itemBuilder: (context,index){
                            String? timestamp = state.headToHeadEntity.data!.h2heventskey?[index].matchstartdate.toString();
                            
                            if(state.headToHeadEntity.data!.h2heventskey!.isNotEmpty){
                              return Card(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                color: const Color(0xFF06162A),
                                child: ListTile(
                                  leading: Text((index+1).toString(),style: GoogleFonts.oswald(),),
                                  title: Row(
                                    children: [
                                      SizedBox(
                                        width: 50,
                                        child: Stack(
                                          children: [
                                            CircleAvatar(
                                              radius: 15,
                                              backgroundColor: Colors.transparent,
                                              child: CachedNetworkImageCDN(
                                                state.headToHeadEntity.data!.h2heventskey![index].hometeam![0].badgesource.toString(),
                                                errorWidget: (context, url, error) => const Icon(Icons.people_alt_outlined),
                                              ),
                                            ),
                                            Positioned(
                                              left: 15,
                                              child: CircleAvatar(
                                                radius: 15,
                                                backgroundColor: Colors.transparent,
                                                child: CachedNetworkImageCDN(
                                                  state.headToHeadEntity.data!.h2heventskey![index].awayteam![0].badgesource.toString(),
                                                  errorWidget: (context, url, error) => const Icon(Icons.people_alt_outlined),

                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Text(
                                        "${state.headToHeadEntity.data?.h2heventskey![index].homescore} - ${state.headToHeadEntity.data?.h2heventskey![index].awayscore}",
                                        style: GoogleFonts.oswald(),
                                      ),
                                    ],
                                  ),
                                  trailing: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(daysDateTime.formattedDateTime(timestamp),style: GoogleFonts.oswald(fontSize: 15),),
                                      Text(daysDateTime.formattedTime(timestamp!,context),style: GoogleFonts.oswald(fontSize: 15,color: Colors.white30),),
                                    ],
                                  ),

                                ),
                              );
                            }
                            else{
                              return const Center(
                                child: Text("Information Is Not Available"),
                              );
                            }
                          }
                      ),
                    )
                )
              ],
            );
          }
          else{
            return Center(
              child: Text("There Is No Available Information",style: GoogleFonts.oswald(fontSize: 20),),
            );
          }

        }
        if(state is HeadToHeadFailed){
          return Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(state.error,style: GoogleFonts.oswald(fontSize: 30),),
                const Icon(Icons.error,color: Colors.red,)
              ],
            ),
          );
        }
        return Container();
      },
    );
  }
}
