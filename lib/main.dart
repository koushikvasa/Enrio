import 'package:demo_app/Screens/Categories.dart';
import 'package:demo_app/Screens/FAQs.dart';
import 'package:demo_app/Screens/Shopping_cart.dart';
import 'package:flutter/material.dart';
import 'package:demo_app/Screens/Profile_page.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'Screens/Profile_page.dart';
import 'package:demo_app/Screens/In_screen.dart';
import 'Screens/support_screen.dart';
import './Screens/wallet_screen.dart';
//import './Screens/profile_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        ProfilePage.routeName: (context) => ProfilePage(),
        CategoryPage.routeName: (context) => CategoryPage(),
        CartPage.routeName: (context) => CartPage(),
        Inscreenpage.routeName: (context) => Inscreenpage(),
        FAQsPage.routeName: (context) => FAQsPage(),
        Support.routeName: (context) => Support(),
        Wallet.routeName: (context) =>Wallet(),
        // Profilescreen.routeName:(context)=> Profilescreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF21BFBD),
        title: Text('Enrio'),
      ),
      body: Column(
        children: <Widget>[
          SafeArea(
            child: SizedBox(
              height: 300.0,
              width: 1000.0,
              child: Carousel(
                boxFit: BoxFit.cover,
                autoplay: false,
                animationCurve: Curves.fastOutSlowIn,
                animationDuration: Duration(milliseconds: 1000),
                dotSize: 6.0,
                dotIncreasedColor: Color(0xFF21BFBD),
                dotBgColor: Colors.transparent,
                dotPosition: DotPosition.topRight,
                dotVerticalPadding: 10.0,
                showIndicator: true,
                indicatorBgPadding: 7.0,
                images: [
                  AssetImage(
                      'assets/images/srm.png'),
                  AssetImage(
                      'assets/images/srm_logo.png'),
                   AssetImage(
                      'assets/images/download.png'),   

                  // ExactAssetImage("assets/images/LaunchImage.jpg"),
                ],
              ),
            ),
          ),
          SafeArea(
            child: Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(45),
                        child: InkWell( onTap: (){},
                                                  child: Container(
                            height: 100,
                            width: 100,
                            // color: Colors.deepOrange,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFF21BFBD),
                            ),
                            child: Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: Transform.scale(scale: 1.75,
                                                      child: Column(children: <Widget>[
                      
                       Text('Rent Out',
                       style: TextStyle(
                           color: Colors.white
                       )),
                          Icon(Icons.arrow_upward,
                       color: Colors.white,),
                              ],),
                            
                            
                              

                            ),
                          ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(45),
                      child: InkWell(onTap: (){
                        Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Inscreenpage()));
                        
                      },
                                              child: Container(
                          
                          height: 100,
                          width: 100,
                          // color: Colors.deepOrange,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFF21BFBD),
                            
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(22.0),
                            child: Transform.scale(scale: 1.75,
                                                      child: Column(children: <Widget>[
                         Icon(Icons.arrow_downward,
                         color: Colors.white,),
                         Text('Rent In',
                         style: TextStyle(
                           color: Colors.white
                         )),
                              ],),
                            
                            
                              

                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
          )
        ],
      ),
     
      drawer: Drawer(
        child: ListView(
          //padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(
              height: 140,
              child: DrawerHeader(
                decoration: BoxDecoration(
                    color: Color(0xFF21BFBD),
                    shape: BoxShape.rectangle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 10.0,
                      )
                    ]),
                curve: Curves.easeInOutBack,
                child: SizedBox(
                    height: 140,
                    child: UserAccountsDrawerHeader(
                      decoration: BoxDecoration(
                        color: Color(0xFF21BFBD),
                      ),
                      accountName: Text('xxxxx'),
                      accountEmail: Text('xxx_yyy@srmap.edu.in'),
                      currentAccountPicture: CircleAvatar(
                        backgroundColor: Colors.grey,
                        foregroundColor: Colors.grey,
                        child: Icon(Icons.person_outline),
                      ),
                    )),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Color(0xFF21BFBD),
              ),
              title: Text('Profile'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.directions_run,
                color: Color(0xFF21BFBD),
              ),
              title: Text('Volunteer'),
            ),
            ExpansionTile(
              leading: Icon(
                Icons.event_available,
                color: Color(0xFF21BFBD),
              ),
              title: Text('My Orders'),
              trailing: Icon(Icons.keyboard_arrow_down),
              backgroundColor: Color(0xFF21BFBD),
              children: <Widget>[
                ListTile(
                  title: Text('Rent In Orders'),
                ),
                ListTile(
                  title: Text('Rent Out Orders'),
                )
              ],
            ),
            ListTile(
              leading: Icon(
                Icons.account_balance_wallet,
                color: Color(0xFF21BFBD),
              ),
              title: Text('Wallet'),
              onTap: (){
               Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Wallet()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Color(0xFF21BFBD),
              ),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(
                Icons.call,
                color: Color(0xFF21BFBD),
              ),
              title: Text('Support'),
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Support()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.notifications,
                color: Color(0xFF21BFBD),
              ),
              title: Text('Notifications Logged'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FAQsPage()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Color(0xFF21BFBD),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FAQsPage()));
              },
              title: Text('FAQS'),
            ),
          ],
        ),
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
