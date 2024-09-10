import 'package:flutter/material.dart';
import 'package:quran_app/core/class/api_link.dart';
import 'package:quran_app/core/class/curd.dart';
import 'package:quran_app/core/class/status_requset.dart';

import '../../../core/model/name_sura.dart';

abstract class HomeController extends ChangeNotifier {
  getSuraName();
}

class HomeControllerImp extends HomeController {
  Curd curd = Curd();
  List<NameSuraMode> nameSura = [];
  StatusRequest statusRequest = StatusRequest.none;
  @override
  getSuraName() async {
    statusRequest = StatusRequest.loading;
    var request = await curd.getData(ApiLink.nameSura);
    if (request != null) {
      for (var element in request['data']) {
        nameSura.add(NameSuraMode.fromJson(element));
      }
      statusRequest = StatusRequest.success;
      print("Success______________add to list");
    } else {
      statusRequest = StatusRequest.failure;
    }
    notifyListeners();
  }
}
