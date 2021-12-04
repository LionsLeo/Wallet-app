import 'package:flutter/material.dart';
import 'package:wallet/HomeWithSidebar.dart';
import 'main.dart';
import 'HomeWithSidebar.dart';

class CreatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: createPage(),
      routes: {
        '/homePage' : (context) => HomeWithSidebar(),
        '/mainPage' : (context) => MyApp(),
      },
    );
  }
}
class createPage extends StatefulWidget {
  @override
  _createPageState createState() => _createPageState();
}

class _createPageState extends State<createPage> {
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
                InkWell(
                  child:
                  Text("Back", style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'ubuntu',
                      fontSize: 25
                  ),),
                  onTap: openMainPage,
                ),
              ],
            ),
            SizedBox(height: 20,),
            Text("Create Account", style: TextStyle(
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
                Text("Name", style: TextStyle(
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
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Username/Email:", style: TextStyle(
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
                          hintText: 'Username/Email'
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
                        "Create Account",
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
      ),
    );
  }

  void openHomePage() {
    Navigator.pushNamed(context, '/homePage');
  }

  void openMainPage() {
    Navigator.pushNamed(context, '/mainPage');
  }
}

