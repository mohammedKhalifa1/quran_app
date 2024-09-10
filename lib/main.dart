import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:quran_app/core/class/route.dart';

import 'screen/Interface_page.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(color: const Color(0xffd9cee0)),
          useMaterial3: true,
          scaffoldBackgroundColor: const Color(0xffd9cee0)),
      debugShowCheckedModeBanner: false,
      // ignore: deprecated_member_use
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const InterFacePage(),
      routes: routes,
    );
  }
}
