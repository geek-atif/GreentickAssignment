import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UiUtility {
  static showError(String content) {
    Get.snackbar(
      "error".tr,
      content,
      colorText: Colors.white,
    );
  }
}
