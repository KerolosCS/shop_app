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

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/models/shopApp/login_model.dart';
import 'package:shop_app/modules/shop_app/Register/cubit/states.dart';
import 'package:shop_app/shared/network/end_points.dart';
import 'package:shop_app/shared/network/remote/dio_helper.dart';

class ShopRegisterCubit extends Cubit<ShopRegisterStates> {
  ShopRegisterCubit() : super(ShopRegisterInitialState());

  static ShopRegisterCubit get(context) => BlocProvider.of(context);
  ShopLoginModel? registerModel;
  void userRegister({
    required String name,
    required String email,
    required String password,
    required String phone,
    query,
  }) {
    emit(ShopRegisterLoadingState());
    DioHelper.postData(
      language: 'en',
      url: REG, //end point from API
      data: {
        'name': name,
        'email': email,
        'password': password,
        'phone': phone,
      },
      query: query,
    ).then((value) {
      registerModel = ShopLoginModel.fromJson(value.data);
      // ignore: avoid_print
      print("Token From userRegister : ${registerModel?.data?.token}");
      // ignore: avoid_print
      print("name From userRegister : ${registerModel?.data?.name}");
      emit(ShopRegisterSuccessState(registerModel));
    }).catchError(
      (e) {
        // ignore: avoid_print
        print(e.toString());
        emit(
          ShopRegisterErrorState(e.toString()),
        );
      },
    );
  }

  bool vis = true;
  IconData suffix = Icons.visibility_outlined;
  void visiablePassword() {
    vis = !vis;
    suffix = vis ? Icons.visibility_outlined : Icons.visibility_off_outlined;
    emit(ShopRegisterPasswordState());
  }
}
