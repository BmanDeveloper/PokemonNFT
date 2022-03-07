import 'package:pokemon_nft/main/factories/usecases/login/remote_login_with_google_factory.dart';
import 'package:pokemon_nft/presentation/login/login_presenter.dart';

LoginPresenter makeLoginPresenter() => LoginPresenter(
    loginWithGoogle: makeRemoteLoginWithGoogle(),
);