import 'package:animated_container/screen/custom_btmNavbar/custom_textfeild.dart';
import 'package:animated_container/screen/reg_log_page/login_page.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List titles = [
    'Order History',
    'Delivery Address',
    'Card & Payment',
    'Tracking my Order',
  ];
  List<Widget> icons = [
    Icon(Icons.history_outlined,color: Colors.white,size: 30,),
    Icon(Icons.home,color: Colors.white,size: 30),
    Icon(Icons.payment,color: Colors.white,size: 30),
    Icon(Icons.my_location,color: Colors.white,size: 30),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFE6F2FF),
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Color(0xFFE6F2FF),
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: GestureDetector(
                onTap: () {
                  editProfile();
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  height: 50,
                  width: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white),
                  child: Icon(
                    Icons.settings,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
          centerTitle: true,
          title: Text(
            'Popular Deals',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w900,
              fontFamily: 'JosefinSans',
              color: Colors.black,
            ),
          ),
        ),
        body: Container(
          child: Column(
            children: [
              //LOG OUT Expanded
              Expanded(
                flex: 5,
                child: Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 25),
                      width: double.infinity,
                      margin: EdgeInsets.only(left: 20, right: 20, top: 100),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Mahfuzur Rahman Faruk',
                            style: TextStyle(
                              fontSize: 26,
                              fontFamily: 'JosefinSans',
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              showDialog<String>(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text('Are You sure?'),
                                    content: Text('Do you want to log out from \nthis app'),
                                    actions: [
                                      Row(
                                        children: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(context, 'Cancel'),
                                            child: const Text('Cancel',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            ),
                                          ),
                                          TextButton(
                                            onPressed: (){
                                              Navigator.of(context).pushAndRemoveUntil(
                                                  MaterialPageRoute(
                                                      builder: (context) => LogInPage()),
                                                      (route) => false);
                                            },
                                            child: const Text('OK',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),),
                                          ),
                                        ],
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      )
                                    ],
                                    backgroundColor: Color(0xFFFFD741),
                                    contentPadding: EdgeInsets.only(left: 30,right: 30,top: 30,bottom: 50),
                                  );
                                },
                              );
                            },
                            child: Text(
                              'Log Out',
                              style: TextStyle(fontSize: 18),
                            ),
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(120, 50)),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 20,
                      right: 20,
                      top: 0,
                      child: CircleAvatar(
                        radius: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image(
                            width: 200,
                            height: 200,
                            fit: BoxFit.cover,
                            image: AssetImage('images/images/faruk.jpg'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //LIST Expanded
              Expanded(
                flex: 5,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return SizedBox(
                        height: 80,
                        child: Card(
                          elevation: 2,
                          child: Center(
                            child: ListTile(
                              title: Text(titles[index]),
                              leading: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Color(0xFFFC5622),
                                ),
                                child: icons[index],
                              ),
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 5,
                      );
                    },
                    itemCount: titles.length,
                  ),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
  void editProfile(){
    showGeneralDialog(
      context: context,
      pageBuilder: (context, animation, secondaryAnimation) {
        return SafeArea(
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Color(0xFFE6F2FF),
            appBar: AppBar(
              toolbarHeight: 80,
              backgroundColor: Color(0xFFE6F2FF),
              elevation: 0,
              title: Text(
                'Edit Profile',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'JosefinSans',
                  color: Colors.black,
                ),
              ),
              leading: IconButton(
                onPressed: (){
                  Navigator.of(context).pop(context);
                },
                icon: Icon(Icons.arrow_back,color: Colors.black,size: 30,),
              ),
            ),
            body: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.all(20),
              child: Center(
                child:Column(
                  //mainAxisSize: MainAxisSize.min,
                  children:<Widget> [
                    Expanded(child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      //color: Colors.green,
                      child: Stack(
                        children: [
                          Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(150),
                              //color: Colors.red,
                              image: DecorationImage(
                                image: AssetImage('images/images/faruk.jpg'),
                                fit: BoxFit.cover,
                              )
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Icon(Icons.edit,color: Colors.white,size: 40,),
                            ),
                          ),
                        ],
                      ),
                    ),flex: 3,),
                    Expanded(child: Container(
                      //color: Colors.red,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomTextFeild(
                            isObsecure: false,
                            hintText: 'My Phone',
                            prefixIcon: Icons.phone_android,
                          ),
                          CustomTextFeild(
                            isObsecure: false,
                            hintText: 'Email',
                            prefixIcon: Icons.email,
                          ),
                          CustomTextFeild(
                            isObsecure: false,
                            hintText: 'Full Name',
                            prefixIcon: Icons.alternate_email,
                          ),
                          CustomTextFeild(
                            isObsecure: false,
                            hintText: 'Password',
                            prefixIcon: Icons.lock,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              final snackBar = SnackBar(
                                duration: Duration(seconds: 3),
                                backgroundColor: Colors.green,
                                content: Text('Data has been saved successfully.',style: TextStyle(
                                  fontSize: 18,
                                ),),
                              );
                              ScaffoldMessenger.of(context).showSnackBar(snackBar);
                              Future.delayed(Duration(seconds: 4),(){
                                Navigator.of(context).pop();
                              });
                            },
                            child: Text("Save",
                              style: TextStyle(color: Colors.white,fontSize: 16),
                            ),
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(150, 60)
                            ),
                          ),
                        ],
                      ),
                    ),flex: 6,),

                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
