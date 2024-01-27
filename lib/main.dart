
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sportapp/features/feature_line_up/presentation/bloc/line_up_bloc.dart';
import 'features/feature_live_match/presentation/bloc/live_match_bloc.dart';
import 'features/feature_today_match/presentation/bloc/today_match_bloc.dart';
import 'features/feature_league/presentation/bloc/league_bloc.dart';
import 'features/feature_match_by_date/presentation/bloc/match_by_date_bloc.dart';
import 'features/feature_splash_page/presentation/bloc/splash_page_bloc.dart';
import 'features/feature_head_to_head/presentation/bloc/head_to_head_bloc.dart';
import 'features/feature_team_next_match/presentation/bloc/team_next_match_bloc.dart';
import 'features/feature_splash_page/presentation/screens/splash_page.dart';
import 'locator.dart';


Future<void> main() async {
  AwesomeNotifications().initialize(
      null,
      [
        NotificationChannel(
            channelKey: 'quicksport',
            channelName: 'quicksport',
            channelDescription: 'quicksport')
      ],
    debug: true
  );
  await setup();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<SplashPageBloc>(
        create: (context) => SplashPageBloc(),
      ),
      BlocProvider<LeagueBloc>(
        create: (context) => locator<LeagueBloc>(),
      ),
      BlocProvider<LiveMatchBloc>(
        create: (context) => locator<LiveMatchBloc>(),
      ),
      BlocProvider<TodayMatchBloc>(
        create: (context) => locator<TodayMatchBloc>(),
      ),
      BlocProvider<MatchByDateBloc>(
        create: (context) => locator<MatchByDateBloc>(),
      ),
      BlocProvider<TeamNextMatchBloc>(
        create: (context) => locator<TeamNextMatchBloc>(),
      ),
      BlocProvider<HeadToHeadBloc>(
        create: (context) => locator<HeadToHeadBloc>(),
      ),
      BlocProvider<LineUpBloc>(
          create: (context) => locator<LineUpBloc>()
      )
    ],
    child: const MyApp(),
  ));
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
      if(!isAllowed){
        AwesomeNotifications().requestPermissionToSendNotifications();
      }

    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      home: const SplashPage(),
    );
  }
}
