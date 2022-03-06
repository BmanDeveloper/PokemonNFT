import 'dart:async';

import 'package:pokemon_nft/data/http/http_client.dart';
import 'package:pokemon_nft/domain/entities/pokemon_entity.dart';
import 'package:pokemon_nft/domain/usecases/home/fetch_popular_pokemons.dart';

import '../../models/pokemon_model.dart';

class RemoteFetchPopularPokemons extends FetchPopularPokemons {
  var numero = 1;
  var limite = 10;
  var lista = [];

  RemoteFetchPopularPokemons({
    required this.httpClient
  });

  HttpClient httpClient;

  var timer = Timer(Duration(seconds: 1), () => print('done'));

  @override
  Future<List<PokemonEntity>> execute() async {
    final response =
    await httpClient.get(url: 'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json');


    return response['pokemon']
        .map<PokemonEntity>(
            (pokemonJson) => PokemonModel.fromJson(pokemonJson).toEntity())
        .toList();
  }
}
