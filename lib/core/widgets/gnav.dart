import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sportapp/features/feature_search/presentation/screens/search_page.dart';
import '../../features/feature_league/presentation/screens/league.dart';
import '../../features/feature_match_by_date/presentation/screens/match_by_date.dart';


class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height/6.3,
      child: DotNavigationBar(

        dotIndicatorColor: Colors.white,
        backgroundColor: Colors.blue[900]?.withOpacity(0.4),
        unselectedItemColor: Colors.blue[900],
        currentIndex: _selectedTab,
        
        onTap: (index){
          setState(() {
            _selectedTab = index;
          });
          if(index == 1){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const League()));
          }
          if(index == 2){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const MatchByDate()));
          }
          if(index == 3){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchPage()));
          }

        },
        items: [
          /// Home
          DotNavigationBarItem(
            icon: const Icon(Icons.home),
            selectedColor: Colors.white,
          ),

          /// Likes
          DotNavigationBarItem(
            icon:  const FaIcon(FontAwesomeIcons.trophy,size: 20,),
            selectedColor: Colors.white,
          ),

          /// Search
          DotNavigationBarItem(
            icon: const Icon(Icons.sports_soccer_sharp) ,
            selectedColor: Colors.white,
          ),

          /// Profile
          DotNavigationBarItem(
            icon: const Icon(Icons.manage_search_sharp),
            selectedColor: Colors.white,
          ),

        ],
      ),
    );
  }
}
