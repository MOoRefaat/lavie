part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
}

class LoginEventData extends LoginEvent {
  final String email;
  final String password;
  const LoginEventData({
    required this.password,
    required this.email,
  });
  @override
  List<Object?> get props => [email, password];
}
