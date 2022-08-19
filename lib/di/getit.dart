import 'package:get_it/get_it.dart';
import 'package:lavie/network/api.dart';
import 'package:lavie/screens/Login_Screen/bloc/login_bloc.dart';
import 'package:lavie/screens/Register_Screen/bloc/register_bloc.dart';
import '../repository/main_repo.dart';

final getIt = GetIt.instance;

void setup() {
  //blocs
  getIt.registerLazySingleton<RegisterBloc>(
      () => RegisterBloc(mainRepo: getIt()));
  //repo
  getIt.registerLazySingleton<MainRepo>(() => MainRepo(webServices: getIt()));
  //
  getIt.registerLazySingleton<WebServices>(() => WebServices());

  getIt.registerLazySingleton<LoginBloc>(() => LoginBloc(mainRepo: getIt()));
}
