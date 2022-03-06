import 'package:pokemon_nft/domain/entities/pokemon_entity.dart';

class PokemonModel {
  PokemonModel({
    required this.name,
    required this.img,
    required this.num,
  });

  String name;
  String img;
  String num;

  factory PokemonModel.fromJson(Map json) => PokemonModel(
    name: json['name'],
    img: json['img'],
    num: json['num'],
  );

  PokemonEntity toEntity() => PokemonEntity(
    name: name,
    img: img,
    num: num,
  );
}
