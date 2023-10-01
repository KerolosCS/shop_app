/*
 *
 * ----------------
 * | 241030072002 |
 * ----------------
 * Copyright © [2023] KERO CS FLUTTER DEVELOPMENT.
 * All Rights Reserved. For inquiries or permissions, contact  me ,
 * https://www.linkedin.com/in/kerolos-fady-software-engineer/
 *
 * /
 */

import 'package:shop_app/models/shopApp/login_model.dart';

abstract class ShopLoginStates {}

class ShopLoginInitialState extends ShopLoginStates {}

class ShopLoginLoadingState extends ShopLoginStates {}

class ShopLoginSuccessState extends ShopLoginStates {
  final ShopLoginModel? loginModel;

  ShopLoginSuccessState(this.loginModel);
}

class ShopLoginPasswordState extends ShopLoginStates {}

class ShopLoginErrorState extends ShopLoginStates {
  final String error;
  ShopLoginErrorState(this.error);
}
