import 'package:animated_container/screen/reg_log_page/login_page.dart';
import 'package:animated_container/screen/intro_splash_page/splash_screen.dart';
import 'package:animated_container/screen/verify_page/verify_phone_page.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {

  bool isObsecure = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    image: AssetImage('images/images/reg_img.jpg'),
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 20,),
                  Text(
                    'Welcome to \nRegistration Page',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 35,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'JosefinSans',
                      color: Color(0xFFFF5321),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Please write to correct informations',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 24,
                      fontFamily: 'DancingScript',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 40,),
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
                    height: 10,
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
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(200, 60),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>VerifyPhonePage()));
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40,),
                  Row(
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'DancingScript',
                        ),
                      ),
                      TextButton(onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LogInPage()));
                      },
                        child: Text(
                        'Sign In',
                        style: TextStyle(
                        color: Colors.red,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),),),
                    ],
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}
