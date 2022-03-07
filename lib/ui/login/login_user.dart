import 'package:flutter/material.dart';
import 'package:pokemon_nft/presentation/login/login_presenter.dart';
import 'package:pokemon_nft/ui/widgets/rounded_button.dart';
import 'package:pokemon_nft/ui/utils/images.dart';

class LoginUser extends StatelessWidget{
  static const String id = '/login_user';

  const LoginUser({
    Key? key,
    required this.presenter,
  }) : super(key: key);

  final LoginPresenter presenter;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                  radius: 150,
                  backgroundImage: Images().loginLogo,
              ),
              const Text('Pokemon App - LOGIN'),
              const SizedBox(height: 32),
              RoundedButton(text: 'Login com Google', onPressed: presenter.onLoginWithGooglePressed),
            ],
          ),
        )
      ),
    );
  }




}