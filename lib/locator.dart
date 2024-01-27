

import 'package:get_it/get_it.dart';
import 'package:sportapp/features/feature_featured_games/data/data_source/remote/apiprovider.dart';
import 'package:sportapp/features/feature_featured_games/data/repository/featured_game_repositoryImpl.dart';
import 'package:sportapp/features/feature_featured_games/domain/repository/featured_games_repository.dart';
import 'package:sportapp/features/feature_head_to_head/data/data_source/remote/apiprovider.dart';
import 'package:sportapp/features/feature_head_to_head/data/repository/head_to_head_repositoryImpl.dart';
import 'package:sportapp/features/feature_head_to_head/domain/repository/head_to_head_repository.dart';
import 'package:sportapp/features/feature_head_to_head/domain/usecase/head_to_head_usecase.dart';
import 'package:sportapp/features/feature_head_to_head/presentation/bloc/head_to_head_bloc.dart';
import 'package:sportapp/features/feature_league/data/data_source/remote/apiProvider.dart';
import 'package:sportapp/features/feature_league/data/repository/league_repositoryImpl.dart';
import 'package:sportapp/features/feature_league/domain/repository/league_repository.dart';
import 'package:sportapp/features/feature_league/domain/usecase/league_usecase.dart';
import 'package:sportapp/features/feature_league/presentation/bloc/league_bloc.dart';
import 'package:sportapp/features/feature_line_up/data/data_source/remote/api_provider.dart';
import 'package:sportapp/features/feature_line_up/data/repository/line_up_repositoryimpl.dart';
import 'package:sportapp/features/feature_line_up/domain/repository/line_up_repository.dart';
import 'package:sportapp/features/feature_line_up/domain/usecase/line_up_usecase.dart';
import 'package:sportapp/features/feature_line_up/presentation/bloc/line_up_bloc.dart';
import 'package:sportapp/features/feature_live_match/data/data_source/remote/apiprovider.dart';
import 'package:sportapp/features/feature_live_match/data/repository/live_match_repositoryImpl.dart';
import 'package:sportapp/features/feature_live_match/domain/repository/live_match_repository.dart';
import 'package:sportapp/features/feature_live_match/domain/usecase/live_match_usecase.dart';
import 'package:sportapp/features/feature_live_match/presentation/bloc/live_match_bloc.dart';
import 'package:sportapp/features/feature_match_by_date/data/data_source/remote/apiprovider.dart';
import 'package:sportapp/features/feature_match_by_date/data/repository/match__by_date_repositoryImpl.dart';
import 'package:sportapp/features/feature_match_by_date/domain/repository/match_by_date_repository.dart';
import 'package:sportapp/features/feature_match_by_date/domain/usecase/match_by_date_usecase.dart';
import 'package:sportapp/features/feature_match_by_date/presentation/bloc/match_by_date_bloc.dart';
import 'package:sportapp/features/feature_team_next_match/data/data_source/remote/apiProvider.dart';
import 'package:sportapp/features/feature_team_next_match/data/repository/team_next_match_repositoryImpl.dart';
import 'package:sportapp/features/feature_team_next_match/domain/repository/team_next_match_repository.dart';
import 'package:sportapp/features/feature_team_next_match/domain/usecase/team_next_match_usecase.dart';
import 'package:sportapp/features/feature_team_next_match/presentation/bloc/team_next_match_bloc.dart';
import 'package:sportapp/features/feature_today_match/data/data_source/remote/apiprovider.dart';
import 'package:sportapp/features/feature_today_match/data/repository/today_match_repositoryImpl.dart';
import 'package:sportapp/features/feature_today_match/domain/repository/today_match_repository.dart';
import 'package:sportapp/features/feature_today_match/domain/usecase/today_match_usecase.dart';
import 'package:sportapp/features/feature_today_match/presentation/bloc/today_match_bloc.dart';

GetIt locator = GetIt.instance;

setup(){
  locator.registerSingleton<MatchByDateApiProvider>(MatchByDateApiProvider());
  locator.registerSingleton<TodayMatchApiProvider>(TodayMatchApiProvider());
  locator.registerSingleton<NextMatchApiProvider>(NextMatchApiProvider());
  locator.registerSingleton<LiveMatchApiProvider>(LiveMatchApiProvider());
  locator.registerSingleton<LeagueApiProvider>(LeagueApiProvider());
  locator.registerSingleton<HeadToHeadApiProvider>(HeadToHeadApiProvider());
  locator.registerSingleton<FeaturedGameApiProvider>(FeaturedGameApiProvider());
  locator.registerSingleton<LineUpApiProvider>(LineUpApiProvider());

  //repository
  locator.registerSingleton<TodayMatchRepository>(TodayMatchRepositoryImpl(locator()));
  locator.registerSingleton<TeamNextMatchRepository>(TeamNextMatchRepositoryImpl(locator()));
  locator.registerSingleton<MatchByDateRepository>(MatchByDateRepositoryImpl(locator()));
  locator.registerSingleton<LiveMatchRepository>(LiveMatchRepositoryImpl(locator()));
  locator.registerSingleton<LeagueRepository>(LeagueRepositoryImpl(locator()));
  locator.registerSingleton<HeadToHeadRepository>(HeadToHeadRepositoryImpl(locator()));
  locator.registerSingleton<FeaturedGameRepository>(FeaturedGameRepositoryImpl(locator()));
  locator.registerSingleton<LineUpRepository>(LineUpRepositoryImpl(locator()));

  //usecase
  locator.registerSingleton<HeadToHeadUseCase>(HeadToHeadUseCase(locator()));
  locator.registerSingleton<LeagueUseCase>(LeagueUseCase(locator()));
  locator.registerSingleton<LiveMatchUseCase>(LiveMatchUseCase(locator()));
  locator.registerSingleton<TodayMatchUseCase>(TodayMatchUseCase(locator()));
  locator.registerSingleton<TeamNextMatchUseCase>(TeamNextMatchUseCase(locator()));
  locator.registerSingleton<MatchByDateUseCase>(MatchByDateUseCase(locator()));
  locator.registerSingleton<LineUpUseCase>(LineUpUseCase(locator()));

  //bLoc
  locator.registerSingleton<HeadToHeadBloc>(HeadToHeadBloc(locator()));
  locator.registerSingleton<LiveMatchBloc>(LiveMatchBloc(locator()));
  locator.registerSingleton<MatchByDateBloc>(MatchByDateBloc(locator()));
  locator.registerSingleton<TeamNextMatchBloc>(TeamNextMatchBloc(locator()));
  locator.registerSingleton<LeagueBloc>(LeagueBloc(locator()));
  locator.registerSingleton<TodayMatchBloc>(TodayMatchBloc(locator()));
  locator.registerSingleton<LineUpBloc>(LineUpBloc(locator()));

}