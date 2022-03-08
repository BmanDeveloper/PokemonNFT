import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokemon_nft/main/factories/pages/home/home_screen_factory.dart';
import 'package:pokemon_nft/ui/home/home_screen.dart';
import 'package:pokemon_nft/ui/login/login_user.dart';
import 'package:pokemon_nft/main/factories/pages/login/login_user_factory.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pokemon_nft/ui/splash/splash_screen.dart';
import 'main/factories/pages/splash/splash_screen_factory.dart';

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
      debugShowCheckedModeBanner: false,
      title: 'Pokemon App',
      color: Colors.deepPurpleAccent,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      initialRoute: SplashScreen.id,
      getPages: [
        GetPage(name: SplashScreen.id, page: makeSplashScreen),
        GetPage(name: LoginUser.id, page: makeLoginUser),
        GetPage(name: HomeScreen.id, page: makeHomeScreen),
      ],
    );
  }
}