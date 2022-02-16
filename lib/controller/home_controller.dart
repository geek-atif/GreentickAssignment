import 'dart:convert';
import 'dart:developer';
import '../model/product_info.dart';
import '../utiles/constant.dart';
import '../utiles/ui_utility.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var isLoading = false.obs;
  late List<Data> datas = List<Data>.empty().obs;
  void getRecommendDetails() async {
    isLoading.value = true;
    try {
      var productInfo = ProductInfo.fromJson(jsonDecode(Constant.jsonData));
      datas = productInfo.data;
      isLoading.value = false;
    } catch (e) {
      UiUtility.showError("S");
      log("Error : ${e.toString()}");
      e.printError();
      isLoading.value = false;
    }
  }

  @override
  void onClose() {
    super.onClose();
  }

  getProducts() {}
}
