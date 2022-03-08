import 'package:get/get.dart';
import 'package:pokemon_nft/domain/usecases/login/login_with_google.dart';
import 'package:pokemon_nft/ui/home/home_screen.dart';
import 'package:pokemon_nft/ui/login/login_user.dart';

class LoginPresenter extends GetxController{
  LoginPresenter({
    required this.loginWithGoogle,
  });

  LoginWithGoogle loginWithGoogle;

  RxBool showLoginFailed = false.obs;

  void onLoginWithGooglePressed() async {
    final user = await loginWithGoogle.execute();

    if (user != null) {
      Get.offAndToNamed(HomeScreen.id);
    } else {
      Get.offAndToNamed(LoginUser.id);
      //showLoginFailed.value = true;
    }
  }
}