import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../theme.dart';


class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Smart Study".text.xl5.color(MyTheme.darkBlue).make(),
        "Treding Books".text.xl2.make(),
      ],
    );
  }
}
