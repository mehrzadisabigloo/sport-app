
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sportapp/features/feature_league/presentation/widgets/standing.dart';

import '../bloc/league_bloc.dart';




class League extends StatefulWidget {
  const League({super.key});

  @override
  State<League> createState() => _LeagueState();
}

class _LeagueState extends State<League> {
  List teamsInfo = [
    ["assets/images/premier.png",65],
    ["assets/images/1.jpeg",75],
    ["assets/images/2.png",67],
    ["assets/images/3.jpeg",77],
    ["assets/images/4.png",68]
  ];
  @override
  void initState() {
    super.initState();
    BlocProvider.of<LeagueBloc>(context).add(CallLeague(65));
  }
  @override
  Widget build(BuildContext context) {
    var width =  MediaQuery.of(context).size.width;
    var height =  MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text("League Standing",style: GoogleFonts.oswald(
          fontSize: 23,
              fontWeight: FontWeight.w600
        ),),
        centerTitle: true,
        leading: IconButton(icon: const Icon(Icons.arrow_back_ios_new_outlined,size: 20,color: Colors.white54,), onPressed: () { Navigator.pop(context); },),
      ),
      backgroundColor: Colors.blue[900]?.withOpacity(0.17),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: height / 5.1,
              ),
              Expanded(
                  child: Container(
                    decoration:  BoxDecoration(
                      color: Colors.blue[900]?.withOpacity(0.17),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(70),
                        topRight: Radius.circular(70)
                      )
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: height / 12,right: 20,left: 20),
                      child: Column(
                        children: [
                      Card(
                      color: Colors.blue[900]?.withOpacity(0.1),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child:  ListTile(
                        leading: Text("Rank",style: GoogleFonts.oswald(
                          fontSize: 15
                        ),),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Team",style: GoogleFonts.oswald(
                            fontSize: 15
                        )),
                            Text("Points",style: GoogleFonts.oswald(
                                fontSize: 15
                            ))
                          ],
                        ),
                      ),
                  ),
                          const Expanded(
                            child: SizedBox(
                              child: Standing(),
                            ),
                          ),
                        ],
                      ),
                    ),

                          ),
                    )
          ]
              ),



           Positioned(
            left: 30,
              top: 20,
              child: Text("Select A League :",style: GoogleFonts.oswald(
                  fontSize: 25
              ),)
          ),
          Positioned(
            width: width,
            height: height / 4.6,
              top: height / 14.5,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomLeft,
                                colors: [
                                Color(0xFF06162A),
                                Color(0xFF0D1A57),
                                  ],
                              ),
                    // backgroundBlendMode: BlendMode.overlay,
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(35)
                  ),
                  child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context,index){
                            return Container(
                              margin: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                            width: width / 4,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                                // gradient: LinearGradient(
                                //     begin: Alignment.topRight,
                                //     end: Alignment.bottomLeft,
                                //     colors: [
                                //       Colors.black12,
                                //       Colors.blue.shade900
                                //     ]
                                // )
                            ),
                            // height: 100,
                            child: GestureDetector(
                                onTap: (){
                                BlocProvider.of<LeagueBloc>(context).add(CallLeague(teamsInfo[index][1]));
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                  SizedBox(
                                  height: 50,
                                  child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(teamsInfo[index][0])
                                  ),
                                )

                                ],
                                ),
                                ),
                                );
                                },
                                itemCount: teamsInfo.length,
                                ),
                ),
              )
          )
        ],
      ),
    );
  }
}