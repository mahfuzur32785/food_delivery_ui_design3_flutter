import 'package:animated_container/model_class/code_numbers.dart';
import 'package:animated_container/screen/verify_page/verification_code_page.dart';
import 'package:flutter/material.dart';

class VerifyPhonePage extends StatefulWidget {
  VerifyPhonePage({Key? key}) : super(key: key);

  @override
  State<VerifyPhonePage> createState() => _VerifyPhonePageState();
}

class _VerifyPhonePageState extends State<VerifyPhonePage> {
  final users = Item.users();
  String dropdownvalue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.only(top: 50,left: 20,right: 20),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image(
                  image: AssetImage('images/images/verify_phone.png'),
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.fitHeight,
                ),
                SizedBox(height: 20,),
                Text('Verify Your Phone Number',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontFamily: 'Oswald',
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),),
                SizedBox(height: 20,),
                Text('Enter You Phone Number',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),),
                SizedBox(height: 40,),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: DropdownButton(
                        value: users[0],
                        items: users.map((user){
                          return DropdownMenuItem(
                            child: Row(
                              children: [
                              Text('${user.country}'),
                              SizedBox(width: 10,),
                              Text('${user.code}'),
                            ],),
                            value: user,
                          );
                        }).toList(),
                        onChanged: (country){
                          dropdownvalue = country.toString();
                          print("You selected: $country");
                        },
                      )
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      flex: 4,
                      child:
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
                        hintText: 'Phone Number'
                      ),
                    ),),
                  ],
                ),
                SizedBox(height: 30,),
                ElevatedButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>VerificationOTP()));
                }, child: Text('Send OTP')),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){}, child: Text('Home')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
