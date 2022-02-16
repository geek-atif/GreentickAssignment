import 'package:flutter/material.dart';
import '../../model/product_info.dart';
import '../../ui/widgets/text/black_text_body.dart';
import '../../ui/widgets/text/green_text_body.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../ui/styles/my_app_theme.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.screenSize,
    required this.productData,
  }) : super(key: key);
  final Size screenSize;
  final Data productData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset(
              "assets/images/${productData.image}",
              fit: BoxFit.fill,
              height: screenSize.height * 0.25,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Center(child: GreenTextBody(text: productData.title)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Icon(Icons.thumb_up, color: MyAppTheme.lightGreen),
              SizedBox(
                width: screenSize.width * 0.01,
              ),
              BlackTextBody(
                text: productData.noOfLike.toString(),
              ),
              SizedBox(
                width: screenSize.width * 0.04,
              ),
              const Icon(Icons.thumb_down, color: MyAppTheme.lightRed),
              SizedBox(
                width: screenSize.width * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: BlackTextBody(
                  text: productData.noOfDisLike.toString(),
                ),
              ),
              SizedBox(
                width: screenSize.width * 0.05,
              ),
              RatingBar.builder(
                initialRating: productData.rate,
                minRating: productData.rate,
                updateOnDrag: false,
                direction: Axis.horizontal,
                allowHalfRating: false,
                tapOnlyMode: true,
                ignoreGestures: true,
                itemCount: 5,
                itemSize: 20.0,
                itemPadding: const EdgeInsets.symmetric(horizontal: 0.2),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: MyAppTheme.lightGreen,
                ),
                onRatingUpdate: (rating) {},
              ),
              SizedBox(
                width: screenSize.width * 0.02,
              ),
              BlackTextBody(
                text: productData.rate.toString(),
              ),
            ],
          ),
        )
      ],
    );
  }
}
