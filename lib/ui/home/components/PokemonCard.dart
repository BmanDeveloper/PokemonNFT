import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_nft/domain/entities/pokemon_entity.dart';
import 'dart:math';

class PokemonCard extends StatelessWidget{

  PokemonCard({
    Key? key,
    required this.pokemon,
    required this.num,
}) : super(key: key);

  final PokemonEntity pokemon;
  var random = Random();

  //var pokeNum = pokemon.num;
  final String num;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: SizedBox(
        child: Card(
          elevation: 4,
          child: Column(
            children: [
            Padding(
              padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Image.network(
                      "https://assets.pokemon.com/assets/cms2/img/pokedex/full/$num.png",
                      height: 400,
                    ),
                    Text(
                      pokemon.name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                        "R\$ 0," + random.nextInt(100).toString(),
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}