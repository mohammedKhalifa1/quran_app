import 'package:flutter/material.dart';
import 'package:quran_app/core/class/route_name.dart';

import '../../screen/home_page.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.homePage: (context) => const HomePage()
};
