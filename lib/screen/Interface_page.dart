// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:quran_app/core/class/color_app.dart';
import 'package:quran_app/core/class/image_app.dart';
import 'package:quran_app/core/class/route_name.dart';

class InterFacePage extends StatefulWidget {
  const InterFacePage({super.key});

  @override
  State<InterFacePage> createState() => _InterFacePageState();
}

class _InterFacePageState extends State<InterFacePage> {
  // @override
  // void initState() {
  //   Future.delayed(
  //     Duration(seconds: 3),
  //     () {
  //       Navigator.of(context).pushNamed(AppRoute.singIn);
  //     },
  //   );
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            """Learn Quran every day and 
recite once everyday""",
            style: TextStyle(
                fontWeight: FontWeight.w700, color: AppColor.subTitle),
            textAlign: TextAlign.center,
          ),
          actions: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(AppRoute.singIn);
                },
                child: Icon(Icons.arrow_forward_ios))
          ],
        ),
        body: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Image.asset(
                AppImage.interface,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
