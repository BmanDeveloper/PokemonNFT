import 'package:pokemon_nft/domain/entities/pokemon_entity.dart';

abstract class FetchPopularPokemons {
  Future<List<PokemonEntity>> execute();
}