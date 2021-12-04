import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class CardsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: cardsPage(),
    );
  }
}
class cardsPage extends StatefulWidget {
  @override
  _cardsPageState createState() => _cardsPageState();
}

class _cardsPageState extends State<cardsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('asset/images/logo.png'),
                          )
                      ),
                    ),
                    SizedBox(width: 5,),
                    Text("Wallet", style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'ubuntu',
                        fontSize: 25
                    ),)
                  ],
                )
              ],
            ),
            SizedBox(height: 20,),
            Text("Cards", style: TextStyle(
                fontSize: 31,
                fontWeight: FontWeight.w800,
                fontFamily: 'avenir'
            ),),
            SizedBox(height: 10,),
            Expanded(
                child: GridView.count(crossAxisCount: 1,
                  childAspectRatio: 2.75,
                  children: [
                    myCards("1"),
                    myCards("2"),
                    myCards("1")
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }

  Container myCards(String number){
    return Container(
      //padding: EdgeInsets.all(30),
      child:
      Image(image: AssetImage("asset/images/card$number.png"),),
    );
  }
}

