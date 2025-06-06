// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Skip`
  String get Skip {
    return Intl.message('Skip', name: 'Skip', desc: '', args: []);
  }

  /// `Discover a unique shopping experience with FruitHUB. Explore our wide selection of premium fresh fruits and get the best deals and top quality.`
  String get description_on_board1 {
    return Intl.message(
      'Discover a unique shopping experience with FruitHUB. Explore our wide selection of premium fresh fruits and get the best deals and top quality.',
      name: 'description_on_board1',
      desc: '',
      args: [],
    );
  }

  /// `We bring you the best handpicked fruits. Check out the details, images, and reviews to ensure you choose the perfect fruit.`
  String get description_on_board2 {
    return Intl.message(
      'We bring you the best handpicked fruits. Check out the details, images, and reviews to ensure you choose the perfect fruit.',
      name: 'description_on_board2',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to`
  String get title_on_board1 {
    return Intl.message(
      'Welcome to',
      name: 'title_on_board1',
      desc: '',
      args: [],
    );
  }

  /// `Fresh`
  String get title1 {
    return Intl.message('Fresh', name: 'title1', desc: '', args: []);
  }

  /// `Market`
  String get title1_2 {
    return Intl.message('Market', name: 'title1_2', desc: '', args: []);
  }

  /// `Search and Shop`
  String get title_on_board2 {
    return Intl.message(
      'Search and Shop',
      name: 'title_on_board2',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Forgot Password?`
  String get forgot_password {
    return Intl.message(
      'Forgot Password?',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get dont_have_an_account {
    return Intl.message(
      'Don\'t have an account?',
      name: 'dont_have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Create an Account`
  String get create_account {
    return Intl.message(
      'Create an Account',
      name: 'create_account',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login_button {
    return Intl.message('Login', name: 'login_button', desc: '', args: []);
  }

  /// `Or`
  String get or {
    return Intl.message('Or', name: 'or', desc: '', args: []);
  }

  /// `Login with Google`
  String get login_with_google {
    return Intl.message(
      'Login with Google',
      name: 'login_with_google',
      desc: '',
      args: [],
    );
  }

  /// `Login with Apple`
  String get login_with_apple {
    return Intl.message(
      'Login with Apple',
      name: 'login_with_apple',
      desc: '',
      args: [],
    );
  }

  /// `Login with Facebook`
  String get login_with_facebook {
    return Intl.message(
      'Login with Facebook',
      name: 'login_with_facebook',
      desc: '',
      args: [],
    );
  }

  /// `New Account`
  String get new_account {
    return Intl.message('New Account', name: 'new_account', desc: '', args: []);
  }

  /// `Full Name`
  String get full_name {
    return Intl.message('Full Name', name: 'full_name', desc: '', args: []);
  }

  /// `Email Address`
  String get email_address {
    return Intl.message(
      'Email Address',
      name: 'email_address',
      desc: '',
      args: [],
    );
  }

  /// `By creating an account, you agree to`
  String get trems_conditions {
    return Intl.message(
      'By creating an account, you agree to',
      name: 'trems_conditions',
      desc: '',
      args: [],
    );
  }

  /// ` our terms and conditions`
  String get trems_conditions_link {
    return Intl.message(
      ' our terms and conditions',
      name: 'trems_conditions_link',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
