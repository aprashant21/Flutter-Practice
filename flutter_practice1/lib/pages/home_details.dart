import 'package:flutter/material.dart';
import 'package:flutter_practice1/widgets/theme.dart';
import '../models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetails extends StatelessWidget {
  final Item catalog;

  const HomeDetails({
    Key? key,
    required this.catalog,
  })  : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar:Container(
        color: context.cardColor,
        child: ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${catalog.price}".text.xl3.bold.color(Colors.red.shade400).make(),
                  ElevatedButton(
                    onPressed: () {},
                    child: "Add to Cart".text.bold.xl.make(),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(context.theme.buttonColor),
                        shape: MaterialStateProperty.all(StadiumBorder())),
                  )
                ],
              ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image)
              ).h32(context).p(10),
              Expanded(
                child: VxArc(
                  height: 30.0,
                  arcType: VxArcType.CONVEY,
                  edge: VxEdge.TOP,
                  child: Container(
                  color: context.cardColor,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                       catalog.name.text.xl3.color(context.accentColor).bold.make().pOnly(left: 10),
                        2.heightBox,
                        catalog.desc.text.xl.make().p(10),
                        10.heightBox,
                        "Rebum elitr stet stet sea dolor sit et et et. Lorem gubergren amet kasd sanctus amet amet gubergren. Ea diam gubergren dolore sea sed. Ipsum lorem sed lorem lorem. Takimata."
                        .text
                        .lg
                        .make()
                        .p12()
                    ],
                  ).py64(),
                              ),
                ))
              ],
        ),
      ),
    );
  }
}
