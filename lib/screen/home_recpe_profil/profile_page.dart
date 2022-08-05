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
    return Scaffold(
      backgroundColor: Color(0xFFE6F2FF),
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Color(0xFFE6F2FF),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: GestureDetector(
              onTap: () {},
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
    );
  }
}
