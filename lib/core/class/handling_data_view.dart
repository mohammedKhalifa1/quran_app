import 'package:flutter/material.dart';

import 'status_requset.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataView(
      {super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? const Center(
            child: Text("يتم جلب البيانات "),
          )
        : statusRequest == StatusRequest.failure
            ? const Center(
                child: Text("حدث خطا برجاء المحاولة مرة اخرى"),
              )
            : widget;
  }
}
