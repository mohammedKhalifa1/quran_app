import 'package:flutter/material.dart';
import 'package:quran_app/core/class/route_name.dart';

import '../../../core/model/name_sura.dart';

class CardSura extends StatelessWidget {
  final List<NameSuraMode> nameSura;
  final int i;
  const CardSura({super.key, required this.nameSura, required this.i});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(AppRoute.suraPage);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        // decoration: BoxDecoration(
        //     border: Border.all(color: Colors.black)),
        height: 100,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      nameSura[i].englishName!,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      nameSura[i].englishNameTranslation.toString(),
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                    Text(
                      "verses ${nameSura[i].numberOfAyahs.toString()}",
                      style: const TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 18),
                    ),
                  ],
                ),
                Text(
                  nameSura[i].name!,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: const Divider(
                thickness: 1,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
