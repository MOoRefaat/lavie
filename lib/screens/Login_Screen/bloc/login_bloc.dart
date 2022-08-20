import 'dart:async';
import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:lavie/models/loginModel/login_model.dart';

import '../../../repository/main_repo.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final MainRepo _mainRepo;
  LoginBloc({required MainRepo mainRepo})
      : _mainRepo = mainRepo,
        super(LoginInitial()) {
    on<LoginEvent>((event, emit) {});
    on<LoginEventData>((event, emit) async {
      emit(LoginLoadingState());
      await _mainRepo
          .login(
        password: event.password,
        email: event.email,
      )
          .then((value) {
        emit(LoginSuccessState(message: value.message.toString()));
      }).catchError((error) {
        // print(error.toString());
        emit(LoginErrorState());
        print(_mainRepo.loginModel?.message);
      });
    });
  }
}
