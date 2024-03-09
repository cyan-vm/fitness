import 'package:flutter/material.dart';
// import '../../common/colo_extension.dart';
import 'package:fitness/common/colo_extension.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white, // Changed TColor.black to Colors.black
      body: PageView.builder(
        controller: controller, // Moved controller to PageView.builder
        itemBuilder: (context, index) {
          return SizedBox(
            width: media.width,
            height: media.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/img/on_1.png")
              ],
            ),
          );
        },
      ),
    );
  }
}
