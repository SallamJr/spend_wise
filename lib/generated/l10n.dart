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

class Localizely {
  Localizely();

  static Localizely? _current;

  static Localizely get current {
    assert(_current != null,
        'No instance of Localizely was loaded. Try to initialize the Localizely delegate before accessing Localizely.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<Localizely> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = Localizely();
      Localizely._current = instance;

      return instance;
    });
  }

  static Localizely of(BuildContext context) {
    final instance = Localizely.maybeOf(context);
    assert(instance != null,
        'No instance of Localizely present in the widget tree. Did you add Localizely.delegate in localizationsDelegates?');
    return instance!;
  }

  static Localizely? maybeOf(BuildContext context) {
    return Localizations.of<Localizely>(context, Localizely);
  }

  /// `Spend Wise`
  String get appName {
    return Intl.message(
      'Spend Wise',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get firstName {
    return Intl.message(
      'First Name',
      name: 'firstName',
      desc: '',
      args: [],
    );
  }

  /// `Last Name`
  String get lastName {
    return Intl.message(
      'Last Name',
      name: 'lastName',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your email`
  String get enterEmail {
    return Intl.message(
      'Please enter your email',
      name: 'enterEmail',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email address`
  String get invalidEmail {
    return Intl.message(
      'Please enter a valid email address',
      name: 'invalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your password`
  String get enterPassword {
    return Intl.message(
      'Please enter your password',
      name: 'enterPassword',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your name`
  String get enterName {
    return Intl.message(
      'Please enter your name',
      name: 'enterName',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get getStarted {
    return Intl.message(
      'Get Started',
      name: 'getStarted',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signup {
    return Intl.message(
      'Sign Up',
      name: 'signup',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get account {
    return Intl.message(
      'Account',
      name: 'account',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Welcome`
  String get welcome {
    return Intl.message(
      'Welcome',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Hello`
  String get hello {
    return Intl.message(
      'Hello',
      name: 'hello',
      desc: '',
      args: [],
    );
  }

  /// `Welcome Back`
  String get welcomeBack {
    return Intl.message(
      'Welcome Back',
      name: 'welcomeBack',
      desc: '',
      args: [],
    );
  }

  /// `Login to continue`
  String get loginToContinue {
    return Intl.message(
      'Login to continue',
      name: 'loginToContinue',
      desc: '',
      args: [],
    );
  }

  /// `Category`
  String get category {
    return Intl.message(
      'Category',
      name: 'category',
      desc: '',
      args: [],
    );
  }

  /// `Category Name`
  String get categoryName {
    return Intl.message(
      'Category Name',
      name: 'categoryName',
      desc: '',
      args: [],
    );
  }

  /// `Expense Name`
  String get expenseName {
    return Intl.message(
      'Expense Name',
      name: 'expenseName',
      desc: '',
      args: [],
    );
  }

  /// `Expense Value`
  String get expenseValue {
    return Intl.message(
      'Expense Value',
      name: 'expenseValue',
      desc: '',
      args: [],
    );
  }

  /// `Expense Category`
  String get expenseCategory {
    return Intl.message(
      'Expense Category',
      name: 'expenseCategory',
      desc: '',
      args: [],
    );
  }

  /// `Expense Description`
  String get expenseDescription {
    return Intl.message(
      'Expense Description',
      name: 'expenseDescription',
      desc: '',
      args: [],
    );
  }

  /// `Image`
  String get image {
    return Intl.message(
      'Image',
      name: 'image',
      desc: '',
      args: [],
    );
  }

  /// `Categories`
  String get categories {
    return Intl.message(
      'Categories',
      name: 'categories',
      desc: '',
      args: [],
    );
  }

  /// `Add Category`
  String get addCategory {
    return Intl.message(
      'Add Category',
      name: 'addCategory',
      desc: '',
      args: [],
    );
  }

  /// `Expenses`
  String get expenses {
    return Intl.message(
      'Expenses',
      name: 'expenses',
      desc: '',
      args: [],
    );
  }

  /// `Add Expense`
  String get addExpense {
    return Intl.message(
      'Add Expense',
      name: 'addExpense',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get add {
    return Intl.message(
      'Add',
      name: 'add',
      desc: '',
      args: [],
    );
  }

  /// `Export Data`
  String get exportData {
    return Intl.message(
      'Export Data',
      name: 'exportData',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get about {
    return Intl.message(
      'About',
      name: 'about',
      desc: '',
      args: [],
    );
  }

  /// `Profile Settings`
  String get profileSettings {
    return Intl.message(
      'Profile Settings',
      name: 'profileSettings',
      desc: '',
      args: [],
    );
  }

  /// `Log Out`
  String get logout {
    return Intl.message(
      'Log Out',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `No categories added yet`
  String get initHomeScr {
    return Intl.message(
      'No categories added yet',
      name: 'initHomeScr',
      desc: '',
      args: [],
    );
  }

  /// `No Route Found`
  String get noRouteFound {
    return Intl.message(
      'No Route Found',
      name: 'noRouteFound',
      desc: '',
      args: [],
    );
  }

  /// `Server Failure`
  String get serverFailure {
    return Intl.message(
      'Server Failure',
      name: 'serverFailure',
      desc: '',
      args: [],
    );
  }

  /// `Cache Failure`
  String get cacheFailure {
    return Intl.message(
      'Cache Failure',
      name: 'cacheFailure',
      desc: '',
      args: [],
    );
  }

  /// `Unexpected Error`
  String get unexpectedError {
    return Intl.message(
      'Unexpected Error',
      name: 'unexpectedError',
      desc: '',
      args: [],
    );
  }

  /// `en`
  String get englishCode {
    return Intl.message(
      'en',
      name: 'englishCode',
      desc: '',
      args: [],
    );
  }

  /// `ar`
  String get arabicCode {
    return Intl.message(
      'ar',
      name: 'arabicCode',
      desc: '',
      args: [],
    );
  }

  /// `locale`
  String get locale {
    return Intl.message(
      'locale',
      name: 'locale',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong`
  String get errorMsg {
    return Intl.message(
      'Something went wrong',
      name: 'errorMsg',
      desc: '',
      args: [],
    );
  }

  /// `Success`
  String get successMsg {
    return Intl.message(
      'Success',
      name: 'successMsg',
      desc: '',
      args: [],
    );
  }

  /// `Try Again`
  String get tryAgain {
    return Intl.message(
      'Try Again',
      name: 'tryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get ok {
    return Intl.message(
      'Ok',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Or With`
  String get orWith {
    return Intl.message(
      'Or With',
      name: 'orWith',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get error {
    return Intl.message(
      'Error',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Reload Screen`
  String get errorScreen {
    return Intl.message(
      'Reload Screen',
      name: 'errorScreen',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter Email`
  String get pleaseEnterEmail {
    return Intl.message(
      'Please Enter Email',
      name: 'pleaseEnterEmail',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter Password`
  String get pleaseEnterPassword {
    return Intl.message(
      'Please Enter Password',
      name: 'pleaseEnterPassword',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter Name`
  String get pleaseEnterName {
    return Intl.message(
      'Please Enter Name',
      name: 'pleaseEnterName',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password`
  String get resetPassword {
    return Intl.message(
      'Reset Password',
      name: 'resetPassword',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get newPassword {
    return Intl.message(
      'New Password',
      name: 'newPassword',
      desc: '',
      args: [],
    );
  }

  /// `Retype New Password`
  String get retypeNewPassword {
    return Intl.message(
      'Retype New Password',
      name: 'retypeNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account yet? Sign Up`
  String get forgotPasswordInstruction {
    return Intl.message(
      'Don\'t have an account yet? Sign Up',
      name: 'forgotPasswordInstruction',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up with Google`
  String get googleSignWith {
    return Intl.message(
      'Sign Up with Google',
      name: 'googleSignWith',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account? Login`
  String get havingAccount {
    return Intl.message(
      'Already have an account? Login',
      name: 'havingAccount',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgotPasswordQuestion {
    return Intl.message(
      'Forgot Password?',
      name: 'forgotPasswordQuestion',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continueBtn {
    return Intl.message(
      'Continue',
      name: 'continueBtn',
      desc: '',
      args: [],
    );
  }

  /// `manage spending habits, stay within budget and achieve financial goals.`
  String get signinGreeting {
    return Intl.message(
      'manage spending habits, stay within budget and achieve financial goals.',
      name: 'signinGreeting',
      desc: '',
      args: [],
    );
  }

  /// `Don't worry. Enter your email and we'll send you a link to reset your password.`
  String get forgotPasswordDescription {
    return Intl.message(
      'Don\'t worry. Enter your email and we\'ll send you a link to reset your password.',
      name: 'forgotPasswordDescription',
      desc: '',
      args: [],
    );
  }

  /// `Email Verification`
  String get emailVerification {
    return Intl.message(
      'Email Verification',
      name: 'emailVerification',
      desc: '',
      args: [],
    );
  }

  /// `Back to Login`
  String get backToLoginBtn {
    return Intl.message(
      'Back to Login',
      name: 'backToLoginBtn',
      desc: '',
      args: [],
    );
  }

  /// `Your email is on the way ...`
  String get backToLoginTitle {
    return Intl.message(
      'Your email is on the way ...',
      name: 'backToLoginTitle',
      desc: '',
      args: [],
    );
  }

  /// `Check your email and follow the instructions to reset your password and then back to login.`
  String get backToLoginDescription {
    return Intl.message(
      'Check your email and follow the instructions to reset your password and then back to login.',
      name: 'backToLoginDescription',
      desc: '',
      args: [],
    );
  }

  /// `Gain total control`
  String get gainTotalControl {
    return Intl.message(
      'Gain total control',
      name: 'gainTotalControl',
      desc: '',
      args: [],
    );
  }

  /// `of your money`
  String get ofYourMoney {
    return Intl.message(
      'of your money',
      name: 'ofYourMoney',
      desc: '',
      args: [],
    );
  }

  /// `Become your own money manager`
  String get becomeYourOwnMoneyManager {
    return Intl.message(
      'Become your own money manager',
      name: 'becomeYourOwnMoneyManager',
      desc: '',
      args: [],
    );
  }

  /// `and make every cent count`
  String get makeEveryCentCount {
    return Intl.message(
      'and make every cent count',
      name: 'makeEveryCentCount',
      desc: '',
      args: [],
    );
  }

  /// `Let's save money`
  String get letsSaveMoney {
    return Intl.message(
      'Let\'s save money',
      name: 'letsSaveMoney',
      desc: '',
      args: [],
    );
  }

  /// `Know where your`
  String get knowWhereYour {
    return Intl.message(
      'Know where your',
      name: 'knowWhereYour',
      desc: '',
      args: [],
    );
  }

  /// `money goes`
  String get moneyGoes {
    return Intl.message(
      'money goes',
      name: 'moneyGoes',
      desc: '',
      args: [],
    );
  }

  /// `Track your transaction easily,`
  String get trackYourTransactionEasily {
    return Intl.message(
      'Track your transaction easily,',
      name: 'trackYourTransactionEasily',
      desc: '',
      args: [],
    );
  }

  /// `with categories and financial report`
  String get withCategoriesAndFinancialReport {
    return Intl.message(
      'with categories and financial report',
      name: 'withCategoriesAndFinancialReport',
      desc: '',
      args: [],
    );
  }

  /// `Currency`
  String get currency {
    return Intl.message(
      'Currency',
      name: 'currency',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Dark Mode`
  String get darkMode {
    return Intl.message(
      'Dark Mode',
      name: 'darkMode',
      desc: '',
      args: [],
    );
  }

  /// `Light Mode`
  String get lightMode {
    return Intl.message(
      'Light Mode',
      name: 'lightMode',
      desc: '',
      args: [],
    );
  }

  /// `Arabic`
  String get arabic {
    return Intl.message(
      'Arabic',
      name: 'arabic',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Themes`
  String get themes {
    return Intl.message(
      'Themes',
      name: 'themes',
      desc: '',
      args: [],
    );
  }

  /// `Egypt`
  String get egypt {
    return Intl.message(
      'Egypt',
      name: 'egypt',
      desc: '',
      args: [],
    );
  }

  /// `United Kingdom`
  String get united_kingdom {
    return Intl.message(
      'United Kingdom',
      name: 'united_kingdom',
      desc: '',
      args: [],
    );
  }

  /// `United States`
  String get united_states {
    return Intl.message(
      'United States',
      name: 'united_states',
      desc: '',
      args: [],
    );
  }

  /// `Indonesia`
  String get indonesia {
    return Intl.message(
      'Indonesia',
      name: 'indonesia',
      desc: '',
      args: [],
    );
  }

  /// `Japan`
  String get japan {
    return Intl.message(
      'Japan',
      name: 'japan',
      desc: '',
      args: [],
    );
  }

  /// `Russia`
  String get russia {
    return Intl.message(
      'Russia',
      name: 'russia',
      desc: '',
      args: [],
    );
  }

  /// `Germany`
  String get germany {
    return Intl.message(
      'Germany',
      name: 'germany',
      desc: '',
      args: [],
    );
  }

  /// `Korea`
  String get korea {
    return Intl.message(
      'Korea',
      name: 'korea',
      desc: '',
      args: [],
    );
  }

  /// `EGP`
  String get egypt_code {
    return Intl.message(
      'EGP',
      name: 'egypt_code',
      desc: '',
      args: [],
    );
  }

  /// `GBP`
  String get united_kingdom_code {
    return Intl.message(
      'GBP',
      name: 'united_kingdom_code',
      desc: '',
      args: [],
    );
  }

  /// `USD`
  String get united_states_code {
    return Intl.message(
      'USD',
      name: 'united_states_code',
      desc: '',
      args: [],
    );
  }

  /// `IDR`
  String get indonesia_code {
    return Intl.message(
      'IDR',
      name: 'indonesia_code',
      desc: '',
      args: [],
    );
  }

  /// `JPY`
  String get japan_code {
    return Intl.message(
      'JPY',
      name: 'japan_code',
      desc: '',
      args: [],
    );
  }

  /// `RUB`
  String get russia_code {
    return Intl.message(
      'RUB',
      name: 'russia_code',
      desc: '',
      args: [],
    );
  }

  /// `EUR`
  String get germany_code {
    return Intl.message(
      'EUR',
      name: 'germany_code',
      desc: '',
      args: [],
    );
  }

  /// `WON`
  String get korea_code {
    return Intl.message(
      'WON',
      name: 'korea_code',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<Localizely> {
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
  Future<Localizely> load(Locale locale) => Localizely.load(locale);
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
