import 'package:animated_container/screen/reg_log_page/regestration_page.dart';
import 'package:animated_container/screen/intro_splash_page/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {

  bool isObsecure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFFA1F5A7),
              Color(0xFF9EF5A4),
              Color(0xFFBBCCDC),
              Color(0xFFC0C6DA),
              Color(0xFFC0C6DA),
              Color(0xFFC0C6DA),
              Color(0xFF9EF5A4),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 180,
                alignment: Alignment.center,
                child: Text('LOG IN',
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'Oswald',
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height*0.75,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome to Login \nPage',
                        style: TextStyle(
                          color: Color(0xFFFF5321),
                          fontSize: 32,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Please write to correct informations',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height*0.5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextField(
                              cursorColor: Colors.grey,
                              obscureText: false,
                              decoration: InputDecoration(
                                //border: OutlineInputBorder(),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey,width: 2),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey,width: 2),
                                ),
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey,width: 2),
                                ),
                                labelText: 'EMAIL',
                                labelStyle: TextStyle(
                                  color: Colors.red,
                                  fontSize: 16,
                                ),
                                icon: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFFFF5321),
                                  ),
                                  child: Icon(
                                    Icons.email_outlined,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextField(
                              cursorColor: Colors.grey,
                              obscureText: isObsecure,
                              decoration: InputDecoration(
                                //border: OutlineInputBorder(),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey,width: 2),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey,width: 2),
                                ),
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey,width: 2),
                                ),
                                labelText: 'PASSWORD',
                                labelStyle: TextStyle(
                                  color: Colors.red,
                                  fontSize: 16,
                                ),
                                icon: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFFFF5321),
                                  ),
                                  child: Icon(
                                    Icons.lock_outlined,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                                suffixIcon: IconButton(
                                  icon: Icon(isObsecure == false? Icons.remove_red_eye:Icons.visibility_off,size: 30,color:Colors.grey),
                                  onPressed: (){
                                    setState(() {
                                      isObsecure = !isObsecure;
                                    });
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(200, 60),
                              ),
                              onPressed: () {
                                //Navigator.push(context, MaterialPageRoute(builder: (context)=>SplashScreen()));
                                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>SplashScreen()), (route) => false);
                              },
                              child: Text(
                                'Log In',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            SizedBox(height: 40,),
                            Row(
                              children: [
                                Text(
                                  'Didn\'t you have an account?',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextButton(onPressed: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>RegistrationPage()));
                                }, child: Text('Sign Up',style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 16,
                                ),)),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  )
              ),
            ],
          ),
        )
      ),
    );
  }
}
