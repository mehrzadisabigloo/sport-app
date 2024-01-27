import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:sportapp/features/feature_live_match/presentation/widgets/live_match_list.dart';

class LiveMatchPage extends StatefulWidget {
  const LiveMatchPage({super.key});

  @override
  State<LiveMatchPage> createState() => _LiveMatchPageState();
}

class _LiveMatchPageState extends State<LiveMatchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900]?.withOpacity(0.15),
      appBar: AppBar(
        title: Text(
          "Live Matches",
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
          child: LiveMatchList(),
        ),
      ),
    );
  }
}
