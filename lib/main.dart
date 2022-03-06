import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokemon_nft/main/factories/pages/home_screen_factory.dart';
import 'package:pokemon_nft/ui/home/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Pokemon App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomeScreen.id,
      getPages: [
        GetPage(name: HomeScreen.id, page: makeHomeScreen),
      ],
    );
  }
}