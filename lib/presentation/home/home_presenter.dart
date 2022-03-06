import 'package:get/get.dart';
import 'package:pokemon_nft/domain/entities/pokemon_entity.dart';
import 'package:pokemon_nft/domain/usecases/home/fetch_popular_pokemons.dart';

class HomePresenter extends GetxController {
  HomePresenter({
    required this.fetchPopularPokemons,
  });

  FetchPopularPokemons fetchPopularPokemons;

  RxList<PokemonEntity> pokemonsList = RxList<PokemonEntity>([]);

  @override
  void onInit() async {
    super.onInit();
    final list = await fetchPopularPokemons.execute();
    pokemonsList.value = list;
  }
}
