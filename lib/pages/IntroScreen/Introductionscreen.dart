import 'package:agenda_app/pages/HomeScreen.dart';
import 'package:agenda_app/pages/IntroScreen/introPage1.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  PageController _controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: [
              introPage1(),
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.yellow,
              )
            ],
          ),
          Center(
            child: Container(
              alignment: const Alignment(0, 0.80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 120),
                    child: SmoothPageIndicator(
                        controller: _controller,
                        effect: const WormEffect(dotColor: Colors.white),
                        count: 3),
                  ),
                  onLastPage
                      ? Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const HomeScreen();
                                }));
                              },
                              child: const Text(
                                'Inicio',
                                style: TextStyle(fontSize: 20),
                              )),
                        )
                      : Padding(
                          padding: const EdgeInsets.only(left: 0.0),
                          child: GestureDetector(
                              onTap: () {
                                _controller.jumpToPage(2);
                              },
                              child: Icon(
                                Icons.arrow_right_alt,
                                size: 35,
                              )),
                        ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
