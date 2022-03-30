import 'package:flutter/material.dart';

abstract class LoginPageState {}

class InitLoginPageState extends LoginPageState {}

class LoadingLoginPageState extends LoginPageState {}

class ErrorLoginPageState extends LoginPageState {
  String message;
  ErrorLoginPageState(this.message);
}

class SuccessLoginPageState extends LoginPageState {
  String message;
  SuccessLoginPageState(this.message);
}
