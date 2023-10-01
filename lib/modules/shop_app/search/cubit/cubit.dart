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

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/constants/const.dart';
import 'package:shop_app/models/shopApp/search_model.dart';
import 'package:shop_app/modules/shop_app/search/cubit/states.dart';
import 'package:shop_app/shared/network/end_points.dart';
import 'package:shop_app/shared/network/remote/dio_helper.dart';

class SearchCubit extends Cubit<SearchStates> {
  SearchCubit() : super(SearchInialState());

  static SearchCubit get(context) => BlocProvider.of(context);

  SearchModel? model;

  void search(String txt) {
    emit(SearchLoadingState());
    DioHelper.postData(
      url: SEARCH,
      data: {
        'text': txt,
      },
      token: token,
    ).then((value) {
      model = SearchModel.fromJson(value.data);
      print("StaTus Of SEARCH : ${model?.data?.data?[0].name}");
      emit(SearchSuccessState());
    }).catchError((e) {
      emit(SearchErrorState());
    });
  }
}
