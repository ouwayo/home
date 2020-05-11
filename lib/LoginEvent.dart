
import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {
   LoginEvent();
}

class LoginButtonPressed extends LoginEvent {
 
  final String key;

 LoginButtonPressed( this.key);

  @override
  List<Object> get props => [key];

  @override
  String toString() =>
      'LoginButtonPressed { key: $key }';
}