import 'package:flutter/material.dart';
import 'package:group_chat_app/helper/helper_functions.dart';
import 'package:group_chat_app/pages/authenticate_page.dart';
import 'package:group_chat_app/pages/home_page.dart';
import 'package:group_chat_app/pages/login.dart';
import 'package:group_chat_app/pages/register_page.dart';
import 'package:group_chat_app/ui/custom_button.dart';
import 'package:group_chat_app/ui/clipper.dart';
/*
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  bool _isLoggedIn = false;

  @override
  void initState() {
    super.initState();
    _getUserLoggedInStatus();
  }

  _getUserLoggedInStatus() async {
    await HelperFunctions.getUserLoggedInSharedPreference().then((value) {
      /*if(result != null) {
        setState(() {
          _isLoggedIn = value;
        });
      }*/
    //});
  //}
*/

//  @override
//  Widget build(BuildContext context) {
  //  return MaterialApp(
    //  title: 'Group Chats',
      //debugShowCheckedModeBanner: false,
      //theme: ThemeData.light(),
     // darkTheme: ThemeData.dark(),
      //home: _isLoggedIn != null ? _isLoggedIn ? HomePage() : AuthenticatePage() : Center(child: CircularProgressIndicator()),
      //home: _isLoggedIn ? HomePage() : AuthenticatePage(),
      //home: HomePage(),
    //);
  //}
//}



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter ChatApp',
      theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFFFFFFFF)),
      //theme: ThemeData.dark(),
      initialRoute: MyHomePage.id,
      routes: {
        MyHomePage.id: (context) => MyHomePage(),
        //Registration.id: (context) => Registration(),
        RegisterPage.id: (context) => RegisterPage(),
        Login.id: (context) => Login(),
        //Chat.id: (context) => Chat(),
        // TBA
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  static const String id = "HOMESCREEN";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ClipPath(
            clipper: TopClipper(),
            child: Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.cyanAccent[400],
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: 'logo',
                child: Container(
                  width: 100.0,
                  child: Image.asset("assets/images/blue_circle.jpg"),
                ),
              ),
              Text(
                "Flutter ChatApp",
                style: TextStyle(
                  fontSize: 38.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 0,
          ),
          // TBA
          CustomButton(
            text: "Log In",
            callback: () {
              Navigator.of(context).pushNamed(Login.id);
            },
          ),
          CustomButton(
            text: "Register",
            callback: () {
              Navigator.of(context).pushNamed(RegisterPage.id);
            },
          ),

          ClipOval(
              clipper: BottomClipper(),
              child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.blue[700],
                  ))),
        ],
      ),
    );
  }
}

