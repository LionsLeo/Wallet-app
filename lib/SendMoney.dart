import 'package:flutter/material.dart';
import 'package:wallet/HomeWithSidebar.dart';

class SendMoney extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: sendmoneyPage(),
      routes: {
        '/homePage' : (context) => HomeWithSidebar(),
      },
    );
  }
}
class sendmoneyPage extends StatefulWidget {
  @override
  _sendmoneyPageState createState() => _sendmoneyPageState();
}

class _sendmoneyPageState extends State<sendmoneyPage> {
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
                ),
              ],
            ),
            SizedBox(height: 20,),
            Text("Send Money", style: TextStyle(
                fontSize: 31,
                fontWeight: FontWeight.w800,
                fontFamily: 'avenir'
            ),),
            SizedBox(height: 10,),
            SizedBox(
              height: 10,
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Receiver's Name:", style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'avenir'
                ),),

                Container(
                  height: 60,
                  width: 60,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child:
                  Container(
                    child:
                    TextField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Name'
                      ),
                    ),
                  ),),
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Amount:", style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'avenir'
                ),),

                Container(
                  height: 60,
                  width: 60,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child:
                  Container(
                    child:
                    TextField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Amount'
                      ),
                    ),
                  ),),
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Password:", style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'avenir'
                ),),

                Container(
                  height: 60,
                  width: 60,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child:
                  Container(
                    child:
                    TextField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Password'
                      ),
                    ),
                  ),),
              ],
            ),
            SizedBox(height: 55,),
            Row(
              children: [
                InkWell(
                  onTap: openHomePage,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Cancel",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w700, color: Colors.red),
                          ),
                          Icon(
                            Icons.close,
                            size: 17,
                            color: Colors.red,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                InkWell(
                  onTap: openHomePage,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Color(0xffffac30),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Send",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w700),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            size: 17,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void openHomePage() {
    Navigator.pushNamed(context, '/homePage');
  }
}

