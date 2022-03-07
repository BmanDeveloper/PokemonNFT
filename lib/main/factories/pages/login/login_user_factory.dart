import 'package:flutter/material.dart';
import 'package:pokemon_nft/main/factories/pages/login/login_presenter_factory.dart';
import 'package:pokemon_nft/ui/login/login_user.dart';

Widget makeLoginUser() => LoginUser(presenter: makeLoginPresenter());