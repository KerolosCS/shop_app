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

class ChangeFavModel {
  bool? status;
  String? msg;
  ChangeFavModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    msg = json['message'];
  }
}
