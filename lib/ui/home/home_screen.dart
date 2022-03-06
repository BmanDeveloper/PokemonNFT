import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokemon_nft/presentation/home/home_presenter.dart';
import 'package:pokemon_nft/ui/home/components/PokemonCard.dart';

class HomeScreen extends StatelessWidget {
  static const String id = '/home_screen';

  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final presenter = Get.find<HomePresenter>();
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Obx(
                () {
              final pokemonsList = presenter.pokemonsList.value;
              return IntrinsicHeight(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: IntrinsicHeight(
                    child: Column(
                      children: pokemonsList.map<PokemonCard>((e) => PokemonCard(pokemon: e, num: e.num )).toList(),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

}