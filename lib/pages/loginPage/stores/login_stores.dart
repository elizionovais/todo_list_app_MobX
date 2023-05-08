import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'login_stores.g.dart';

class Login = _LoginBase with _$Login;

abstract class _LoginBase with Store {

  @observable
  String email = '';

  @observable
  String password = '';

  @observable
  bool isPasswordVisible = false;

  @observable
  bool isLoading = false;

  @observable
  bool isLoggedin = false;

  @action
  void setEmail(String value) => email = value;

  @action
  void setPassword(String value) => password = value;

  @action
  void changePasswordVisibility() => isPasswordVisible = !isPasswordVisible;

  @action
  void setLoading(){
    isLoading = true;
    Future.delayed(const Duration(seconds: 3), (){
    isLoading = false;
    });
    isLoggedin = true;
  }

  @computed
  Function? get loginPressed => (email.length > 6 && password.length > 6) && !isLoading ? () {
    setLoading();
  } : null;

  @computed
  IconData get passwordIcon => isPasswordVisible ? Icons.visibility : Icons.visibility_off;
  
  
}