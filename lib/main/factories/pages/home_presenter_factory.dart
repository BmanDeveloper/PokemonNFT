import 'package:pokemon_nft/main/factories/usecases/home/remote_fetch_popular_pokemons_factory.dart';
import 'package:pokemon_nft/presentation/home/home_presenter.dart';

HomePresenter makeHomePresenter() => HomePresenter(fetchPopularPokemons: makeRemoteFetchPopularPokemons());