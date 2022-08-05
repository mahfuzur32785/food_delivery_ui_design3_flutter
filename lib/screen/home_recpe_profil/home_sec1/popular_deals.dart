import 'package:animated_container/model_class/grocery_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopularItem extends StatefulWidget {
  const PopularItem({Key? key}) : super(key: key);

  @override
  State<PopularItem> createState() => _PopularItemState();
}

class _PopularItemState extends State<PopularItem> {
  final groceryItem = GroceryItem.itemList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE6F2FF),
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
          icon: Icon(Icons.arrow_back_ios_new,size: 40,color: Colors.black,),
        ),
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
        color: Color(0xFFE6F2FF),
        padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //SEARCH BAR CONTAINER WITH TEXTFEILD
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(left: 15, right: 15, top: 0, bottom: 20),
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

            ////POPULAR ITEM SCROLLING GRIDVIEW
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.65
                ),
                itemCount: groceryItem.length,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.only(bottom: 15),
                        alignment: Alignment.bottomCenter,
                        height: 350,
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 40),
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
                            Text(
                              '${groceryItem[index].quantity} kg',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500
                              ),
                            ),
                            SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('tk ${groceryItem[index].price}',
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontFamily: 'JosefinSans',
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                Container(
                                  child: Icon(Icons.add,color: Colors.white,size: 30,),
                                  height: 30,
                                  width: 30,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFF5621),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ],
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
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
