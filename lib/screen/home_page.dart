import 'package:animated_container/model_class/grocery_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeePage extends StatefulWidget {
  const HomeePage({Key? key}) : super(key: key);

  @override
  State<HomeePage> createState() => _HomeePageState();
}

class _HomeePageState extends State<HomeePage> {
  final groceryItem = GroceryItem.itemList();
  bool isClick = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Color(0xFFE6F2FF),
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
          child: Column(
            children: [

              //TOP ROW CODE (TITLE NOTIFICATION ICON AND THEME CHANGE ICON)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hand pick fresh \nitems nonly for you.',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'JosefinSans',
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.notifications_none_outlined,
                        color: Colors.black,
                        size: 40,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isClick = !isClick;
                          });
                        },
                        child: Container(
                            alignment: isClick==false?Alignment.topLeft:Alignment.topRight,
                            height: 60,
                            width: 75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(
                                color: Color(0xFFD1D4D7),
                                width: 8,
                              ),
                            ),
                            child: Image(
                              image: isClick == false
                                  ? AssetImage('images/images/light_img.png')
                                  : AssetImage('images/images/dark_img.png'),
                              height: 50,
                              width: 50,
                            )),
                      ),
                    ],
                  ),
                ],
              ),
              //SizedBox(height: 20,),
              //SEARCH BAR CONTAINER WITH TEXTFEILD
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                      borderSide: BorderSide.none
                    ),
                    hintText: 'Search For Enythings',
                    hintStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.grey.shade600,
                    ),
                    prefixIcon: Icon(Icons.search,size: 40,color: Colors.grey.shade600,),
                  ),
                  cursorColor: Colors.grey.shade600,
                  cursorHeight: 25,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black87,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),

              //MID ROW WITH CATEGORY AND SEE ALL TEXTBUTTON
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: (){},
                    child: Text('Categories',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'DancingScript',
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: (){},
                    child: Text(
                      'See All',
                      style: TextStyle(
                        color: Color(0xFFFA5B07),
                        fontSize: 18,
                      ),
                    ),
                  )
                ],
              ),

              //CATEGORIES ITEM SCROLLING CONTAINER
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                height: 150,
                decoration: BoxDecoration(
                  //color: Colors.red
                ),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: groceryItem.length,
                  itemBuilder: (context,index){
                    var grocery_list = groceryItem[index];
                  return Container(
                    alignment: Alignment.bottomCenter,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: AssetImage('${grocery_list.img}'),
                        fit: BoxFit.fitHeight,
                      ),
                      ),
                    child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xFFFE5722),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        )
                      ),
                      child: Text('${grocery_list.name}',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                },
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 15,);
                  },
                ),
              ),

              //MID ROW WITH CATEGORY AND SEE ALL TEXTBUTTON
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: (){},
                    child: Text('Popular Deals',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'DancingScript',
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: (){},
                    child: Text(
                      'See All',
                      style: TextStyle(
                        color: Color(0xFFFA5B07),
                        fontSize: 18,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
