import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class TransactionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: transactionPage(),
    );
  }
}
class transactionPage extends StatefulWidget {
  @override
  _transactionPageState createState() => _transactionPageState();
}

class _transactionPageState extends State<transactionPage> {
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
            Text("Transactions", style: TextStyle(
                fontSize: 31,
                fontWeight: FontWeight.w800,
                fontFamily: 'avenir'
            ),),
            SizedBox(height: 10,),
            Expanded(
                child: GridView.count(crossAxisCount: 1,
                  childAspectRatio: 2.75,
                    children: [
                      myTrans("+90", "04-12-2021", "Meet"),
                      myTrans("-100", "02-12-2021", "Smit"),
                      myTrans("+200", "01-12-2021", "Mike"),
                      myTrans("+50", "28-11-2021", "Meet"),
                      myTrans("-10", "20-11-2021", "Rahul"),
                      myTrans("-20", "15-11-2021", "Rachel"),
                      myTrans("-40", "13-11-2021", "John")
                    ],
                )
            ),
          ],
        ),
      ),
    );
  }

  Container myTrans(String amt,String date,String name){
    return Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Color(0xfff1f3f6),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700
                ),),
                SizedBox(height: 5,),
                Text(date, style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                ),),
              ],
            ),
            Container(
              child: Text(amt, style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w800,
              ),),
            ),
          ],
        ),
    );
  }
}

