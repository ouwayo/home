import 'dart:async';

import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'AutenticationEvent.dart';
import 'LoginEvent.dart';
import 'user_repository.dart';

import 'package:home/AuthenticationBloc.dart';
import 'Login.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final UserRepository userRepository;
  final AuthenticationBloc authenticationBloc;

  LoginBloc({
    @required this.userRepository,
    @required this.authenticationBloc,
  })  : assert(userRepository != null),
        assert(authenticationBloc != null);

  @override
  // LoginState get initialState => LoginInitial();

  @override
  Stream<LoginState> mapEventToState(
    LoginState currentState,
    LoginEvent event,
  ) async* {
    if (event is LoginButtonPressed) {
      // yield CircularProgressIndicator();

      try {
        final token = await userRepository.authenticate(
         
          key: event.key,
        );

        authenticationBloc.dispatch(LoggedIn(token: token));
        // yield LoginInitial();
      } catch (error) {
        // yield LoginFailure(error: error.toString());
      }
    }
  }

  @override
  // TODO: implement initialState
  LoginState get initialState => null;
}
