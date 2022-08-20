part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();
}

class LoginInitial extends LoginState {
  @override
  List<Object> get props => [];
}

class LoginSuccessState extends LoginState {
  final String message;
  const LoginSuccessState({required this.message});
  @override
  List<Object?> get props => [message];
}

class LoginErrorState extends LoginState {
  //final LoginModel errormessage;
  final String? errormessage;
  const LoginErrorState({required this.errormessage});
  @override
  List<Object?> get props => [errormessage];
}

class LoginLoadingState extends LoginState {
  @override
  List<Object?> get props => [];
}
