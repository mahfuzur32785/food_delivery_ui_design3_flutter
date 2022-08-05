import 'package:animated_container/model_class/grocery_items.dart';
import 'package:animated_container/screen/home_recpe_profil/home_sec1/popular_deals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
          padding: EdgeInsets.only(left:15,right:15,top:15,bottom: 5),
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
                            alignment: isClick == false
                                ? Alignment.topLeft
                                : Alignment.topRight,
                            height: 60,
                            width: 75,
                            decoration: BoxDecoration(
                              color: isClick == false? Colors.grey.shade300:Color(0xFF261051),
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(
                                color: isClick == false? Colors.grey.shade400:Color(0xFF3D1E71),
                                width: 8,
                              ),
                            ),
                            child: Image(
                              image: isClick == true
                                  ? AssetImage('images/images/night_img.png')
                                  : AssetImage('images/images/light_img.png'),
                              height: 50,
                              width: 50,
                            )),
                      ),
                    ],
                  ),
                ],
              ),

              //SEARCH BAR CONTAINER WITH TEXTFEILD
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(left: 15,right: 15,top: 15,bottom: 0),
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(borderSide: BorderSide.none),
                    hintText: 'Search For Enythings',
                    hintStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.grey.shade600,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 40,
                      color: Colors.grey.shade600,
                    ),
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
                    onPressed: () {},
                    child: Text(
                      'Categories',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'DancingScript',
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
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
                margin: EdgeInsets.only(top: 5,bottom: 10),
                height: 150,
                decoration: BoxDecoration(
                    //color: Colors.red
                    ),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: groceryItem.length,
                  itemBuilder: (context, index) {
                    return Container(
                      alignment: Alignment.bottomCenter,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                          image: AssetImage('${groceryItem[index].img}'),
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
                            )),
                        child: Text(
                          '${groceryItem[index].name}',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 15,
                    );
                  },
                ),
              ),

              //AUTO SLIDER BANNER
              CarouselSlider.builder(
                  itemCount: groceryItem.length,
                  itemBuilder: (context,index, realIndex){
                    return Container(
                      width: MediaQuery.of(context).size.width*0.7,
                      //color: Colors.grey,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                          image: AssetImage('${groceryItem[index].img}'),
                          fit: BoxFit.cover,
                        )
                      ),
                    );
                  },
                options: CarouselOptions(
                  height: 160,
                  autoPlay: true,
                  pageSnapping: true,
                  //autoPlayAnimationDuration: Duration(seconds: 2),
                  autoPlayInterval: Duration(seconds: 2),
                ),
              ),

              //Last ROW WITH POPULAR DEALS AND SEE ALL TEXTBUTTON
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>PopularItem()));
                    },
                    child: Text(
                      'Popular Deals',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'DancingScript',
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
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
              ////POPULAR ITEM SCROLLING GRIDVIEW
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  children: List.generate(
                    groceryItem.length,
                    (index) => Stack(
                      children: [
                        Container(
                          alignment: Alignment.bottomCenter,
                          //height: 250,
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 25),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '${groceryItem[index].name}',
                                style: TextStyle(
                                  fontSize: 26,
                                  fontFamily: 'JosefinSans',
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 20,
                          right: 20,
                          top: 0,
                          child: CircleAvatar(
                          radius: 80,
                          backgroundImage: AssetImage('${groceryItem[index].img}',),
                        ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
