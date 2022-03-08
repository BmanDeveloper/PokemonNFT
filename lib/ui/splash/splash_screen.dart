import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../main/factories/pages/login/login_presenter_factory.dart';
import '../login/login_user.dart';

class SplashScreen extends StatefulWidget {
  static const String id = '/splash_screen';

  const SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 20), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginUser(presenter: makeLoginPresenter())));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                child: Lottie.asset('assets/images/splashback.json')),
            const SizedBox(height: 20),
            const Text(
              "Pokemon NFT",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}