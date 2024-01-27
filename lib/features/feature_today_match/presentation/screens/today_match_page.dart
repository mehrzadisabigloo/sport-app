import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sportapp/features/feature_today_match/presentation/widgets/today_match_list.dart';

class TodayMatchPage extends StatefulWidget {
  const TodayMatchPage({super.key});

  @override
  State<TodayMatchPage> createState() => _LiveMatchPageState();
}

class _LiveMatchPageState extends State<TodayMatchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900]?.withOpacity(0.15),
      appBar: AppBar(
        title: Text(
          "Today's Matches",
          style: GoogleFonts.oswald(
              fontSize: 25,color: Colors.blue[900]?.withOpacity(0.8)
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0,
        elevation: 0,

      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: SizedBox(
          height: double.infinity,
          child: TodayMatchList(),
        ),
      ),
    );
  }
}
