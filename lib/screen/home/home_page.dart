import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/core/class/color_app.dart';
import 'package:quran_app/core/widget/text_failed.dart';
import 'package:quran_app/screen/home/widget/home_controller.dart';
import '../../core/class/handling_data_view.dart';
import 'widget/card_sura_name.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeControllerImp(),
      child: const HomePageWidget(),
    );
  }
}

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({
    super.key,
  });

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  @override
  void initState() {
    context.read<HomeControllerImp>().getSuraName();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Consumer<HomeControllerImp>(
          builder: (context, value, child) => HandlingDataView(
            statusRequest: value.statusRequest,
            widget: SingleChildScrollView(
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "Sura",
                        style: TextStyle(
                            color: AppColor.title,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      // Container(
                      //   padding: const EdgeInsets.all(10),
                      //   child: CustomTextFailed(
                      //       width: MediaQuery.of(context).size.width / 3,
                      //       hint: "Search",
                      //       controller: value.searchController),
                      // ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: const Divider(
                      thickness: 1,
                      color: Colors.black,
                    ),
                  ),
                  for (int i = 0; i < value.nameSura.length; i++)
                    CardSura(nameSura: value.nameSura, i: i)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
