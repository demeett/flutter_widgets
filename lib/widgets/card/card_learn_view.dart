import 'package:flutter/material.dart';

class CardLearnView extends StatelessWidget {
  const CardLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        CardExample(),
        //const CustomCard(),
        //const CustomCard(),
        // const CustomCard(),
      ]),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: WidgetSizes.colorBlack,
      shape: WidgetSizes.rectangle,
      child: SizedBox(
        height: WidgetSizes.spacXLL,
        width: WidgetSizes.spacXLL,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: WidgetSizes.paddingZero,
              margin: WidgetSizes.paddingZero,
              child: SizedBox(
                height: WidgetSizes.spacXL,
                width: WidgetSizes.spacXL,
                child: Image.asset(alignment: Alignment.topCenter, fit: BoxFit.contain, WidgetSizes.imageSushi),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Sushi",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CardExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            color: Colors.white,
            elevation: 4,
            child: SizedBox(
              width: double.infinity,
              height: WidgetSizes.spac100,
              child: Row(
                children: [
                  Expanded(
                      flex: 3,
                      child: Container(
                        height: WidgetSizes.spacMM,
                        margin: WidgetSizes.paddingZero,
                        padding: WidgetSizes.paddingZero,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 10)],
                            shape: BoxShape.circle),
                        child: SizedBox(
                            height: WidgetSizes.spacM,
                            width: double.infinity * 0.10,
                            child: Image.asset(
                              WidgetSizes.imageSushi,
                              fit: BoxFit.contain,
                            )),
                      )),
                  Expanded(
                      flex: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(" djbkjbdsckbkc"),
                          SizedBox(
                            height: 5,
                          ),
                          Text(" hello"),
                        ],
                      )),
                  Expanded(
                      flex: 2,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("hello"),
                          Icon(
                            Icons.location_on,
                            size: 10,
                          ),
                        ],
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class WidgetSizes {
  static const paddingZero = EdgeInsets.zero;
  static const colorBlack = Colors.black;
  static const double spacM = 50;
  static const double spacMM = 80;
  static const double spac100 = 100;

  static const double spacXL = 150;
  static const double spacXLL = 200;
  static const String imageSushi = "assets/images/sushi.png";
  static RoundedRectangleBorder rectangle = RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
}
