part of 'register_bloc.dart';

abstract class RegisterState extends Equatable {
  const RegisterState();
}

class RegisterInitial extends RegisterState {
  @override
  List<Object> get props => [];
}

class SignUpSuccessState extends RegisterState {
  final String message;
  const SignUpSuccessState({required this.message});
  @override
  List<Object?> get props => [message];
}

class SignUpErrorState extends RegisterState {
  final String message;
  const SignUpErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}

class SignUpLoadingState extends RegisterState {
  @override
  List<Object?> get props => [];
}
