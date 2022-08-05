import 'package:animated_container/model_class/grocery_items.dart';
import 'package:flutter/material.dart';

class RecipePage extends StatefulWidget {
  const RecipePage({Key? key}) : super(key: key);

  @override
  State<RecipePage> createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {

  final groceryItem = GroceryItem.itemList();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          color: Color(0xFFE6F2FF),
          padding: EdgeInsets.only(left:15,right:15,top:15,bottom: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //TOP ROW CODE (TITLE NOTIFICATION ICON AND THEME CHANGE ICON)
              Text(
                'choose your one \nfrom 1000+ Recipes!',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'JosefinSans',
                ),
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

              //Last ROW WITH POPULAR DEALS AND SEE ALL TEXTBUTTON
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
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


            ],
          ),
        ),
      ),
    );
  }
}
