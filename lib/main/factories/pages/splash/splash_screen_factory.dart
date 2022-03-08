import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokemon_nft/main/factories/pages/splash/splash_presenter_factory.dart';
import 'package:pokemon_nft/presentation/splash/splash_presenter.dart';
import 'package:pokemon_nft/ui/splash/splash_screen.dart';

Widget makeSplashScreen() {
  Get.put<SplashPresenter>(makeSplashPresenter());
  return const SplashScreen();
}