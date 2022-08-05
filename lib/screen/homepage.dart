import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool isClick = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Animeted container'),
      ),
      body: Container(
          color: Colors.grey,
          padding: EdgeInsets.all(10),
          child: Stack(
            children: [
              AnimatedContainer(
                height: isClick == false?280:380,
                width: double.infinity,
                decoration: BoxDecoration(),
                duration: Duration(milliseconds: 100),
                child: GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 4,
                  children: List.generate(
                    12,
                    (index) => Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: NetworkImage(
                                  'https://static.remove.bg/remove-bg-web/36b50c4385f75bb65509f63b1e81f99fe2b334fc/assets/start_remove-c851bdf8d3127a24e2d137a55b1b427378cd17385b01aec6e59d5d4b5f39d2ec.png'),
                              height: 60,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            Text('Send Money'),
                          ],
                        )),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 150,
                right: 150,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.black,
                    elevation: 10,
                    onPrimary: Colors.red,
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)
                    ),
                    splashFactory: NoSplash.splashFactory,
                  ),
                  onPressed: () {
                    setState(() {
                      isClick = !isClick;
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('See More'),
                      Icon(isClick==false?Icons.keyboard_arrow_down:Icons.keyboard_arrow_up),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
