import 'package:sportapp/features/feature_featured_games/domain/entities/featured_entity.dart';

import '../../../../core/resources/data_state.dart';

abstract class FeaturedGameRepository{

  Future<DataState<FeaturedEntity>> fetchFeaturedGames();

}