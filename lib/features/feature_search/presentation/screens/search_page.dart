

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sportapp/features/feature_search/presentation/screens/basketball.dart';
import 'package:sportapp/features/feature_search/presentation/screens/sport_detail.dart';


class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String sportText = "Football";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900]?.withOpacity(0.2),
      extendBody: true,
      appBar: PreferredSize(
        preferredSize:  Size(MediaQuery.of(context).size.width, 130 ),
        child: Stack(
          children: <Widget>[
            Container(
              color:const Color(0x3A0C0CF5),
              height: 125,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text("Search", style: GoogleFonts.oswald(fontSize: 25)),),
            ),
            Container(),
            Positioned(
              top: 100.0,
              left: 20.0,
              right: 20.0,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20)
                ),
                child: AppBar(
                  backgroundColor: const Color(0xCF141FC4),
                  leading: const Icon(Icons.menu, color: Colors.white54,),
                  primary: false,
                  title: TextField(
                      decoration: InputDecoration(
                          hintText: sportText,
                          border: InputBorder.none,
                          hintStyle: const TextStyle(color: Colors.grey))),
                  actions: <Widget>[
                    IconButton(
                      icon:  Icon(Icons.search, color: Theme.of(context).primaryColor), onPressed: () {},),
                    IconButton(icon:  Icon(Icons.notifications, color:Theme.of(context).primaryColor),
                      onPressed: () {},)
                  ],
                ),
              ),
            )

          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Stack(
          children: [
            Positioned(
                 top: 35,
                child: Text("Select A Sport:",style: GoogleFonts.oswald(fontSize: 25),)
            ),
            Positioned(
              width: 150,
                height: 150,
                top: 100,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      sportText = "Tennis";
                    });
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const TennisDetail(),));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.sports_tennis),
                        Text("Tennis",style: GoogleFonts.oswald(fontSize: 20,color: Colors.black),)
                      ],
                    ),
                  ),
                )
            ),
            Positioned(
                width: 150,
                height: 180,
                top: 70,
                right: 0,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      sportText = "Basketball";
                    });
                    Navigator.push(context, MaterialPageRoute(builder: (context) => BasketballDetail(),));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.sports_basketball),
                        Text("Basketball",style: GoogleFonts.oswald(fontSize: 20,color: Colors.black),)
                      ],
                    ),
                  ),
                )
            ),
            Positioned(
                width: 150,
                height: 180,
                top: 260,

                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      sportText = "Football";
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.sports_soccer_sharp),
                        Text("Football",style: GoogleFonts.oswald(fontSize: 20,color: Colors.black),)
                      ],
                    ),
                  ),
                )
            ),
            Positioned(
                width: 150,
                height: 150,
                top: 260,
                right: 0,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      sportText = "E-Sports";
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0x3A3F3FE1),
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.videogame_asset_outlined),
                        Text("E-Sports",style: GoogleFonts.oswald(fontSize: 20,color: Colors.black),)
                      ],
                    ),
                  ),
                )
            )
          ],
        ),
      )
    );
  }
}
