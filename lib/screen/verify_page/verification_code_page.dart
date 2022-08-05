import 'package:animated_container/screen/reg_log_page/login_page.dart';
import 'package:flutter/material.dart';

class VerificationOTP extends StatelessWidget {
  const VerificationOTP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 50),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image(
                image: AssetImage('images/images/code_verify.jpg'),
                height: 300,
                width: double.infinity,
                fit: BoxFit.fitHeight,
              ),
              SizedBox(height: 20,),
              Text('OTP VERIFICATION',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontFamily: 'Oswald',
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),),
              SizedBox(height: 20,),
              Text('Please Enter OTP',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 2,
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 2,
                        )
                    ),
                    hintText: 'Enter Your OTP'
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LogInPage()));
              }, child: Text('Verify')),
            ],
          ),
        ),
      ),
    );
  }
}
