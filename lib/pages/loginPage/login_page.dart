import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:todo_list_app/pages/loginPage/stores/login_stores.dart';

import '../homePage/home_page.dart';
import 'components/custom_buttom.dart';
import 'components/custom_text_field.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Login login = Login();

  @override
  //melhor lugar para fazer requisições
  void didChangeDependencies() {
    super.didChangeDependencies();

    autorun((_) {
      if (login.isLoggedin) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => HomePage()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/fundo.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 260, left: 20, right: 20),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Hi!, Welcome',
                        style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.2),
                          blurStyle: BlurStyle.inner,
                          blurRadius: 5,
                          // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                        //para observar as mudanças é preciso colocar o Observer
                        //child: Observer(builder: (_) {
                        child: Observer(builder: (_) {
                          return Column(children: [
                            CustomTextField(
                              controller: emailController,
                              hintText: 'Email',
                              enabled: !login.isLoading,
                              onChaged: login.setEmail,
                              icon: const Icon(Icons.email),
                              suffixIcon: null,
                              obscureText: false,
                            ),
                            CustomTextField(
                              controller: passwordController,
                              hintText: 'Password',
                              enabled: !login.isLoading,
                              onChaged: login.setPassword,
                              icon: const Icon(Icons.lock),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    login.changePasswordVisibility();
                                  },
                                  icon: Icon(login.passwordIcon)),
                              obscureText: !login.isPasswordVisible,
                            ),
                            CustomButtom(
                              onPressed: login.loginPressed,
                              isLoading: login.isLoading,
                            ),
                          ]);
                        }),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
