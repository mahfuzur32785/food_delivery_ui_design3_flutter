import 'package:animated_container/screen/reg_log_page/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  final pageController = PageController();
  bool isLastPage = false;
  bool isActive = true;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(bottom: 80),
        child: PageView(
          controller: pageController,
          onPageChanged: (index) {
            setState(() {
              isLastPage = index == 2;
            });
          },
          children: [
            //INTRODUCTION 1ST PAGE
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('images/images/intro_img_1.png'),
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Welcome\n      to \nGroceryus',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 40,
                      fontFamily: 'JosefinSans',
                      height: 1.3,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    '15000+ groceryus items available for you',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'DancingScript',
                    ),
                  )
                ],
              ),
            ),

            //INTRODUCTION 2ND PAGE
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                    image: AssetImage('images/images/intro_img_2.png'),
                    width: 400,
                    height: 400,
                  ),
                  //Icon('img'),
                  Text(
                    'Fast Derlivery',
                    style: TextStyle(
                      fontFamily: 'JosefinSans',
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                  Text(
                    'Very fast senc day delivery and \n      custom delivery system',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'DancingScript',
                    ),
                  )
                ],
              ),
            ),

            //INTRODUCTION 3RD PAGE
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                    image: AssetImage('images/images/intro_img_2.png'),
                    width: 400,
                    height: 400,
                  ),
                  //Icon('img'),
                  Text(
                    'Fast Derlivery',
                    style: TextStyle(
                      fontFamily: 'JosefinSans',
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                  Text(
                    'Very fast senc day delivery and \n      custom delivery system',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'DancingScript',
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        height: 80,
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => LogInPage()),
                    (route) => false);
              },
              child: Text('Skip'),
            ),
            Center(
              child: SmoothPageIndicator(
                controller: pageController,
                count: 3,
                axisDirection: Axis.horizontal,
                effect: WormEffect(
                  activeDotColor: Color(0xFFF95A22),
                  dotColor: Colors.grey,
                  spacing: 20,
                ),
                onDotClicked: (index) {
                  pageController.animateToPage(
                    index,
                    duration: Duration(milliseconds: 400),
                    curve: Curves.easeInOut,
                  );
                },
              ),
            ),
            isLastPage == false
                ? IconButton(
                    onPressed: () {
                      pageController.nextPage(
                        duration: Duration(milliseconds: 400),
                        curve: Curves.easeInOut,
                      );
                    },
                    icon: Icon(
                      Icons.arrow_forward,
                      size: 35,
                      color: Colors.blue,
                    ),
                  )
                : ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                            builder: (context) => LogInPage(),
                          ),
                          (route) => false);
                    },
                    child: Text(
                      'Start',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 18,
                          letterSpacing: 1.2),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFFFF5327),
                        fixedSize: Size(120, 45),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
