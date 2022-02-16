import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/home_controller.dart';
import '../../ui/widgets/header.dart';
import '../../ui/widgets/loading.dart';
import '../../ui/widgets/products.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeController _homeController = Get.find();
  @override
  void initState() {
    super.initState();
    _homeController.getRecommendDetails();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.only(top: 40, left: 15, right: 15),
          child: Column(
            children: [
              const Header(),
              Obx(
                () => _homeController.isLoading.value
                    ? const Loading(
                        loadingMessage: '',
                      )
                    : Products(
                        screenSize: screenSize,
                        productDatas: _homeController.datas),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
