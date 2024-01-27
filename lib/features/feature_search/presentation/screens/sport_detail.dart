import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class TennisDetail extends StatefulWidget {
  const TennisDetail({super.key});

  @override
  State<TennisDetail> createState() => _SportDetailState();
}

class _SportDetailState extends State<TennisDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900]?.withOpacity(0.2),
      body: Stack(
        children: [
          Positioned(
              top: 0,
              height: 200,
              width: MediaQuery.sizeOf(context).width,
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFF114D15),
                      // image: const DecorationImage(image: AssetImage("assets/images/tennis.png"),fit: BoxFit.fitHeight)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        CircleAvatar(backgroundColor: Colors.white30, child: IconButton(
                          icon:Icon(Icons.arrow_back,size: 20) ,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        ),
                        Text("Tennis Matches",style: GoogleFonts.oswald(fontSize: 20),),
                        const CircleAvatar(backgroundColor: Colors.white30,child: Icon(Icons.menu,size: 20,)),

                      ],
                    ),
                  ),
                ),
              ),
          ),
          Positioned(
            top:100,
            height: 200,
            width: MediaQuery.sizeOf(context).width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
               decoration: BoxDecoration(
                 image: const DecorationImage(image: AssetImage("assets/images/ten.png",),fit: BoxFit.cover),
                 color: const Color(0xFF09330C),
                 borderRadius: BorderRadius.circular(30)
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
                                Image.asset("assets/images/rfederer.png",width: 40,),
                                const SizedBox(height: 5,),
                                Text("R.Federe",style: GoogleFonts.oswald(fontSize: 20)),
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
                                    child: Text("(15 : 45)",style: GoogleFonts.oswald()),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset("assets/images/ndjokovich.png",width: 35,),
                                const SizedBox(height: 5,),
                                Text("N.Jokovich",style: GoogleFonts.oswald(fontSize: 20)),
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
            ),
          ),
           Positioned(
             width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            top: 290,
            child: ListView.builder(
                itemBuilder: (context, index) {
                  if(index == 0){
                    return ListTile(
                      leading: Image.asset("assets/images/es.png",width: 25,),
                      title: Text("Tennis Live Matches : ",style:GoogleFonts.oswald(fontSize: 20),),
                      subtitle: Text("Spainish League",style:GoogleFonts.oswald(fontSize: 16,color: Colors.white30),),
                      trailing: const Icon(Icons.arrow_right),
                    );
                  }
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                          color: const Color(0xFF211C1C),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 5,
                            height: 70,
                            decoration: const BoxDecoration(
                                color: Color(0xF41B1B60),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(80),
                                    topRight: Radius.circular(80)
                                )
                            ),
                          ),
                          Text("33'",style: GoogleFonts.oswald(color: Colors.amber)),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 50,
                                width: 250,
                                child: ListTile(
                                    leading: const Icon(Icons.sports_tennis),
                                    title: Text("R.Federer",style: GoogleFonts.oswald(color: Colors.white30),),
                                    trailing: Text("4",style: GoogleFonts.oswald(color: Colors.amber,fontSize: 15),)
                                ),
                              ),
                              Container(
                                color: Colors.white10,
                                height: 1,
                                width: 230,
                              ),
                              SizedBox(
                                height: 50,
                                width: 250,
                                child: ListTile(
                                    leading: const Icon(Icons.sports_tennis),
                                    title: Text("N.Djokovich",style: GoogleFonts.oswald(color: Colors.white30),),
                                    trailing: Text("2",style: GoogleFonts.oswald(color: Colors.amber,fontSize: 15),)
                                ),
                              )
                            ],
                          ),
                          const Icon(Icons.star_border_outlined)
                        ],
                      ),
                    ),
                  );
                },

                itemCount: 4)
                     )
        ],
      ),
    );
  }
}
