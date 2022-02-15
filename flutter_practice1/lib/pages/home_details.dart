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
      appBar: AppBar(),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar:Container(
        color: Colors.white,
        child: ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${catalog.price}".text.xl3.bold.color(MyTheme.darkBlue).make(),
                  ElevatedButton(
                    onPressed: () {},
                    child: "Buy".text.bold.xl.make(),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(MyTheme.darkBlue),
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
                  color: Colors.white,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                       catalog.name.text.xl3.color(MyTheme.darkBlue).bold.make().pOnly(left: 10),
                        2.heightBox,
                        catalog.desc.text.center.xl.make().p(10),
                        10.heightBox,
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
