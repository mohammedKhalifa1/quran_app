import 'package:flutter/material.dart';
import 'package:quran_app/core/class/color_app.dart';
import 'package:quran_app/core/class/route_name.dart';

import '../core/class/image_app.dart';
import '../core/widget/custom_button.dart';
import '../core/widget/text_failed.dart';

class SingIn extends StatefulWidget {
  const SingIn({super.key});

  @override
  State<SingIn> createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
  TextEditingController? controllerText;
  @override
  void initState() {
    super.initState();
    controllerText = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 5,
                  ),
                  const Text(
                    "Quran App",
                    style: TextStyle(
                        color: AppColor.title,
                        fontWeight: FontWeight.w900,
                        fontSize: 20),
                  ),
                  const Text(
                    "Asalamu Alaikum !!!",
                    style: TextStyle(color: Color(0xff9d1df2)),
                  ),
                  CustomTextFailed(hint: "email", controller: controllerText!),
                  CustomTextFailed(
                    hint: "password",
                    controller: controllerText!,
                    passwordActive: true,
                  ),
                  CustomButton(
                    widget: const Text(
                      "signIn",
                      style: TextStyle(color: AppColor.title),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed(AppRoute.homePage);
                    },
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                  AppImage.logo,
                ))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// Image.asset(
//                   fit: BoxFit.fill,
//                   AppImage.logo,
//                   height: 100,
//                   width: MediaQuery.of(context).size.width,
//                 ),