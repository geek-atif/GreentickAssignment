import 'package:flutter/material.dart';
import '../../model/product_info.dart';

import 'product_card.dart';

class Products extends StatelessWidget {
  const Products(
      {Key? key, required this.screenSize, required this.productDatas})
      : super(key: key);
  final Size screenSize;
  final List<Data> productDatas;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenSize.height * 0.4,
      width: screenSize.width,
      child: ListView.builder(
          physics: const ClampingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: productDatas.length,
          itemBuilder: (BuildContext context, int index) {
            return ProductCard(
                screenSize: screenSize, productData: productDatas[index]);
          }),
    );
  }
}
