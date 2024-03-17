import 'package:flutter/material.dart';
import 'package:fitness/common/colo_extension.dart';
// import '../../../../.emacs.d/backups/!home!cyan!fitness!lib!common_widget!on_boarding_page.dart~';
// import '../../../../.emacs.d/backups/!home!cyan!fitness!lib!common_widget!on_boarding_page.dart~';
import 'package:fitness/common_widget/on_boarding_page.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController controller = PageController();
  int selectPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(() {
      selectPage = controller.page?.round() ?? 0;
    });
  }

  List pageArr = [
    {
      "title": "Track Your Goal",
      "subtitle":
          "Don't worry if you have trouble determining your goals, We can help you determine your goals and track your goals",
      "image": "assets/img/on_1.png"
    },
    {
      "title": "Get Burn",
      "subtitle":
          "Let’s keep burning, to achive yours goals, it hurts only temporarily, if you give up now you will be in pain forever",
      "image": "assets/img/on_2.png"
    },
    {
      "title": "Eat Well",
      "subtitle":
          "Let's start a healthy lifestyle with us, we can determine your diet every day. healthy eating is fun",
      "image": "assets/img/on_3.png"
    },
    {
      "title": "Improve Sleep\nQuality",
      "subtitle":
          "Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning",
      "image": "assets/img/on_4.png"
    },
  ];
  // print(pageArr.length);

  @override
  Widget build(BuildContext context) {
    // print("length : ${pageArr.length}");
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: Stack(
        alignment: Alignment.bottomRight,
        children: [
          PageView.builder(
              controller: controller,
              itemCount: pageArr.length,
              itemBuilder: (context, index) {
                var pObj = pageArr[index] as Map? ?? {};
                return OnBoardingPage(pObj: pObj);
              }),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  color: TColor.primaryColor1,
                  borderRadius: BorderRadius.circular(35)),
              child: IconButton(
                  icon: Icon(Icons.navigate_next),
                  color: TColor.white,
                  onPressed: () {
                    if (selectPage < 3) {
                      selectPage = selectPage + 1;
                      controller.jumpToPage(selectPage);
                    } else {
                      print("Open welcome screen");
                    }
                    // controller.jumpToPage(nextPage);
                  })),
          // Text((controller.page ?? 0).toInt().toString()),
        ],
      ),
    );
  }
}
