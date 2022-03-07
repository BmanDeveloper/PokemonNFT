import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokemon_nft/main/factories/pages/home/home_presenter_factory.dart';
import 'package:pokemon_nft/presentation/home/home_presenter.dart';
import 'package:pokemon_nft/ui/home/home_screen.dart';

Widget makeHomeScreen() {
  Get.put<HomePresenter>(makeHomePresenter());
  return const HomeScreen();
}