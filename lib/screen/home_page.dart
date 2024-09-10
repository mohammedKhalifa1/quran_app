import 'package:flutter/material.dart';

import '../core/class/image_app.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              AppImage.logo,
              height: MediaQuery.of(context).size.height / 2.5,
            ),
          ),
          Text("data")
        ],
      ),
    );
  }
}
