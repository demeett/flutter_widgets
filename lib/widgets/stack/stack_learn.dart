import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StackDemo2(),
    );
  }
}

class GeneralValue {
  static const purple = Color.fromARGB(255, 161, 131, 217);
  static const pink = Color.fromARGB(255, 228, 119, 196);
  static const laci = Color.fromARGB(255, 9, 47, 79);
  static const white = Colors.white;
  static DateTime time = DateTime.now();
  static const textfist = "Yoga and Meditation for Beginers";
  static const textsecond = "Adobe XD Live Event in Europe";
  static const textthird = "Practice French ,English And Chinese";
}

class StackDemo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomContainer(
          radius: const BorderRadius.only(bottomLeft: Radius.circular(0)),
          mycolor: GeneralValue.purple,
          child: CustomElement(
            text1: GeneralValue.time.toString(),
            text2: GeneralValue.textfist,
          ),
        ),
        CustomContainer(
          bottom: MediaQuery.of(context).size.height / 4,
          mycolor: GeneralValue.pink,
          child: CustomElement(
            text1: GeneralValue.time.toString(),
            text2: GeneralValue.textsecond,
          ),
        ),
        CustomContainer(
          bottom: MediaQuery.of(context).size.height * 2 / 4,
          mycolor: GeneralValue.laci,
          child: CustomElement(
            text1: GeneralValue.time.toString(),
            text2: GeneralValue.textthird,
          ),
        ),
        CustomContainer(
          bottom: MediaQuery.of(context).size.height * 3 / 4,
          mycolor: GeneralValue.white,
          child: ListExpanded(),
        ),
      ],
    );
  }
}

class CustomElement extends StatelessWidget {
  const CustomElement({
    Key? key,
    required this.text1,
    required this.text2,
  }) : super(key: key);
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text1,
            style: const TextStyle(color: Colors.black45),
          ),
          Text(
            text2,
            style: GoogleFonts.nunito(color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const FollowWidget()
        ],
      ),
    );
  }
}

class FollowWidget extends StatelessWidget {
  const FollowWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 60,
          child: Stack(
            children: const [
              Positioned(
                child: FollowAtomic(
                  imagePath: "assets/images/profile_pic2.jpeg",
                ),
              ),
              Positioned(
                left: 20,
                child: FollowAtomic(
                  imagePath: "assets/images/profile_pic.png",
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
            width: 200,
            child: Text(
              "join Elizabeth and 11 others",
              style: TextStyle(color: Colors.black45, fontStyle: FontStyle.italic),
            ))
      ],
    );
  }
}

class FollowAtomic extends StatelessWidget {
  const FollowAtomic({
    Key? key,
    required this.imagePath,
  }) : super(key: key);
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.fill, image: AssetImage(imagePath)),
          border: Border.all(color: Colors.white, width: 3),
          borderRadius: BorderRadius.circular(20)),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {Key? key,
      this.bottom = 0,
      required this.mycolor,
      this.child = const SizedBox(),
      this.radius = const BorderRadius.only(bottomLeft: Radius.circular(50))})
      : super(key: key);
  final double? bottom;
  final Color mycolor;
  final Widget? child;
  final BorderRadius? radius;
  @override
  Widget build(BuildContext context) {
    return Positioned(
        height: MediaQuery.of(context).size.height,
        left: 0,
        right: 0,
        bottom: bottom,
        child: Container(
          decoration: BoxDecoration(
            color: mycolor,
            borderRadius: radius,
          ),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: child,
          ),
        ));
  }
}

class CustomCircleAwatar extends StatelessWidget {
  const CustomCircleAwatar({
    Key? key,
    required this.backgroundColor,
    required this.imagePath,
  }) : super(key: key);

  final Color backgroundColor;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 70,
      child: CircleAvatar(
        backgroundColor: backgroundColor,
        child: Image.asset(
          imagePath,
          width: 50,
          height: 50,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

class ListExpanded extends StatelessWidget {
  @override
  Widget build(Object context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: const [
        Expanded(
            child: CustomCircleAwatar(
          backgroundColor: GeneralValue.purple,
          imagePath: "assets/images/sushi.png",
        )),
        Expanded(
            child: CustomCircleAwatar(
          backgroundColor: GeneralValue.pink,
          imagePath: "assets/images/increment.png",
        )),
        Expanded(
            child: CustomCircleAwatar(
          backgroundColor: GeneralValue.laci,
          imagePath: "assets/images/like.png",
        ))
      ],
    );
  }
}
