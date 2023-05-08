// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_stores.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Login on _LoginBase, Store {
  Computed<Function?>? _$loginPressedComputed;

  @override
  Function? get loginPressed =>
      (_$loginPressedComputed ??= Computed<Function?>(() => super.loginPressed,
              name: '_LoginBase.loginPressed'))
          .value;
  Computed<IconData>? _$passwordIconComputed;

  @override
  IconData get passwordIcon =>
      (_$passwordIconComputed ??= Computed<IconData>(() => super.passwordIcon,
              name: '_LoginBase.passwordIcon'))
          .value;

  late final _$emailAtom = Atom(name: '_LoginBase.email', context: context);

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$passwordAtom =
      Atom(name: '_LoginBase.password', context: context);

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  late final _$isPasswordVisibleAtom =
      Atom(name: '_LoginBase.isPasswordVisible', context: context);

  @override
  bool get isPasswordVisible {
    _$isPasswordVisibleAtom.reportRead();
    return super.isPasswordVisible;
  }

  @override
  set isPasswordVisible(bool value) {
    _$isPasswordVisibleAtom.reportWrite(value, super.isPasswordVisible, () {
      super.isPasswordVisible = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_LoginBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$isLoggedinAtom =
      Atom(name: '_LoginBase.isLoggedin', context: context);

  @override
  bool get isLoggedin {
    _$isLoggedinAtom.reportRead();
    return super.isLoggedin;
  }

  @override
  set isLoggedin(bool value) {
    _$isLoggedinAtom.reportWrite(value, super.isLoggedin, () {
      super.isLoggedin = value;
    });
  }

  late final _$_LoginBaseActionController =
      ActionController(name: '_LoginBase', context: context);

  @override
  void setEmail(String value) {
    final _$actionInfo =
        _$_LoginBaseActionController.startAction(name: '_LoginBase.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_LoginBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String value) {
    final _$actionInfo = _$_LoginBaseActionController.startAction(
        name: '_LoginBase.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$_LoginBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePasswordVisibility() {
    final _$actionInfo = _$_LoginBaseActionController.startAction(
        name: '_LoginBase.changePasswordVisibility');
    try {
      return super.changePasswordVisibility();
    } finally {
      _$_LoginBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLoading() {
    final _$actionInfo =
        _$_LoginBaseActionController.startAction(name: '_LoginBase.setLoading');
    try {
      return super.setLoading();
    } finally {
      _$_LoginBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
password: ${password},
isPasswordVisible: ${isPasswordVisible},
isLoading: ${isLoading},
isLoggedin: ${isLoggedin},
loginPressed: ${loginPressed},
passwordIcon: ${passwordIcon}
    ''';
  }
}
