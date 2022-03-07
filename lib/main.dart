import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokemon_nft/main/factories/pages/home/home_screen_factory.dart';
import 'package:pokemon_nft/ui/home/home_screen.dart';
import 'package:pokemon_nft/ui/login/login_user.dart';
import 'package:pokemon_nft/main/factories/pages/login/login_user_factory.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Pokemon App',
      color: Colors.deepPurpleAccent,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      initialRoute: LoginUser.id,
      getPages: [
        GetPage(name: LoginUser.id, page: makeLoginUser),
        GetPage(name: HomeScreen.id, page: makeHomeScreen),
      ],
    );
  }
}