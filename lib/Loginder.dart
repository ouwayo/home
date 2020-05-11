import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

abstract class Loginder extends Equatable {
  Loginder();

  @override
  List<Object> get props => [];
}

class LoginInitial extends Loginder {}

class LoginLoading extends Loginder {}

class LoginFailure extends Loginder {
  final String error;

  LoginFailure({@required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'LoginFailure { error: $error }';
}