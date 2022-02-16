import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import '../../ui/styles/my_app_theme.dart';
import 'text/red_text_body.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Icon(Icons.thumb_up, color: MyAppTheme.lightRed),
            const SizedBox(
              width: 5,
            ),
            RedTextBody(
              text: "recommended".tr,
            )
          ],
        ),
        RedTextBody(
          text: "viewAll".tr,
        )
      ],
    );
  }
}
