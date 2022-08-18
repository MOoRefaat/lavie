part of 'register_bloc.dart';

abstract class RegisterEvent extends Equatable {
  const RegisterEvent();
}
class SignUpEvent extends RegisterEvent{
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  const SignUpEvent({required this.password,required this.email,
  required this.firstName,required this.lastName});
  @override
  List<Object?> get props => [firstName,lastName,email,password];
}
