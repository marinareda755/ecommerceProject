import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

import '../costant/imageasset.dart';
import 'StatusRequest.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataView(
      {Key? key, required this.statusRequest, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
        child: Lottie.asset('assets/lottie/cart.json', width: 250, height: 250))
        : statusRequest == StatusRequest.offlinefailure
        ? Center(
        child: Lottie.asset('assets/lottie/offline.json',
            width: 250, height: 250))
        : statusRequest == StatusRequest.serverfailure
        ? Center(
        child: Lottie.asset('assets/lottie/server.json',
            width: 250, height: 250))
        : statusRequest == StatusRequest.failure
        ? Center(
        child: Lottie.asset('assets/lottie/nodata.json',
            width: 250, height: 250, repeat: true))
        : widget;
  }
}

class HandlingDataRequest extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataRequest(
      {Key? key, required this.statusRequest, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
        child: Lottie.asset('assets/lottie/cart.json', width: 250, height: 250))
        : statusRequest == StatusRequest.offlinefailure
        ? Center(
        child: Lottie.asset('assets/lottie/offline.json',
            width: 250, height: 250))
        : statusRequest == StatusRequest.serverfailure
        ? Center(
        child: Lottie.asset('assets/lottie/server.json',
            width: 250, height: 250))
        : widget;
  }
}