import 'package:pokemon_nft/data/usecases/home/remote_fetch_popular_pokemons.dart';
import 'package:pokemon_nft/main/factories/infra/http_client_factory.dart';

RemoteFetchPopularPokemons makeRemoteFetchPopularPokemons() => RemoteFetchPopularPokemons(httpClient: makeHttpClient());