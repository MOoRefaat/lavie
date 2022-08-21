import 'package:get_it/get_it.dart';
import 'package:lavie/network/api.dart';
import 'package:lavie/screens/Login_Screen/bloc/login_bloc.dart';
import 'package:lavie/screens/Product_Screen/bloc/products_bloc.dart';
import 'package:lavie/screens/Register_Screen/bloc/register_bloc.dart';
import '../repository/main_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';
final getIt = GetIt.instance;

void setup() async{
  //blocs
  getIt.registerLazySingleton<RegisterBloc>(
      () => RegisterBloc(mainRepo: getIt()));
  //repo
  getIt.registerLazySingleton<MainRepo>(() => MainRepo(webServices: getIt()));
  //
  getIt.registerLazySingleton<WebServices>(() => WebServices());

  getIt.registerLazySingleton<LoginBloc>(() => LoginBloc(mainRepo: getIt()));
  getIt.registerLazySingleton<ProductsBloc>(() => ProductsBloc());

  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton(() => sharedPreferences);
}
