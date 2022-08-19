import 'dart:async';
import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:lavie/models/signup_model.dart';
import 'package:lavie/repository/main_repo.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final MainRepo _mainRepo;
  RegisterBloc({required MainRepo mainRepo})
      : _mainRepo = mainRepo,
        super(RegisterInitial()) {
    on<RegisterEvent>((event, emit) {});
    on<SignUpEvent>((event, emit) async {
      emit(SignUpLoadingState());
      await _mainRepo
          .signUp(
              password: event.password,
              email: event.email,
              first: event.firstName,
              last: event.lastName)
          .then((value) {
        emit(SignUpSuccessState(message: value!.message.toString()));
      }).catchError((error) {
        print(error.toString());
        emit(SignUpErrorState(message: error!.toString()));
      });
    });
  }
}
