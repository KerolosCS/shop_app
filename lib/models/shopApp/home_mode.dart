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

// ignore_for_file: avoid_print

class HomeMedel {
  late bool status;
  late HomeDataModel data;

  HomeMedel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = HomeDataModel.fromJson(json['data']);
  }
}

class HomeDataModel {
  List<Map<String, dynamic>> banners = [];
  List<Map<String, dynamic>> products = [];
  HomeDataModel.fromJson(Map<String, dynamic> json) {
    json['banners'].forEach((element) {
      banners.add(element);
    });
    json['products'].forEach((element) {
      products.add(element);
    });
    // print("OK");
  }
}

// class BannerModel {
//   late int id;
//   late String image;
//   BannerModel.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     image = json['image'];
//   }
// }

// class ProductModel {
//   late int id;
//   late dynamic price;
//   late dynamic oldPrice;
//   late dynamic discount;
//   late String image;
//   late String name;
//   late bool inFavorites;
//   late bool inCart;
//   ProductModel.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     price = json['price'];
//     oldPrice = json['old_price'];
//     discount = json['discount'];
//     image = json['image'];
//     name = json['name'];
//     inFavorites = json['in_favorites'];
//     inCart = json['in_cart'];
//   }
// }
