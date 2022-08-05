import 'package:animated_container/screen/home_recpe_profil/home_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  bool isVisible = true;
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3),(){
      isVisible = false;
      Navigator.push(context, MaterialPageRoute(builder: (_) => HomeePage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'images/images/splash_img.jpg',
            ),
            fit: BoxFit.fitHeight,
          ),
          ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: isVisible,
              child: Container(
                padding: EdgeInsets.all(20),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(20),
                ),
                child:CircularProgressIndicator(
                  color: Colors.red,
                  strokeWidth: 20,
                  backgroundColor: Colors.grey,
                ),
              ),
            ),
          ],
        ),
        ),
    );
  }
}
