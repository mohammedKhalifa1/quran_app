import 'package:flutter/material.dart';
import 'package:quran_app/core/class/route_name.dart';
import 'package:quran_app/screen/home/home_page.dart';

import '../../screen/signin_page.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.singIn: (context) => const SingIn(),
  AppRoute.homePage: (context) => const HomePage(),
};
