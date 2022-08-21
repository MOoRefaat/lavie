import 'package:flutter/material.dart';
import 'package:lavie/repository/main_repo.dart';
import 'package:lavie/screens/HomeLayout_Screen/view/homeLayout_screen.dart';
import 'package:lavie/screens/Login_Screen/bloc/login_bloc.dart';
import 'package:lavie/screens/Login_Screen/view/login_screen_imports.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lavie/screens/Product_Screen/bloc/products_bloc.dart';
import 'package:lavie/screens/Register_Screen/bloc/register_bloc.dart';
import 'package:lavie/screens/Register_Screen/view/register_screen_imports.dart';
import 'di/getit.dart';
import 'network/cashe_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  await CasheHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => getIt.get<RegisterBloc>()),
          BlocProvider(create: (context) => getIt.get<LoginBloc>()),
          BlocProvider(create: (context)=>getIt.get<ProductsBloc>())
        ],
        child: RepositoryProvider(
          create: (context) => getIt.get<MainRepo>(),
          child: MaterialApp(
              debugShowCheckedModeBanner: false, home: LoginScreen()),
        ));
  }
}
// This trailing comma makes auto-formatting nicer for build methods.
