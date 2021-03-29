import 'package:flutter/material.dart';
import 'package:demo_app/main.dart';
class FAQsPage extends StatefulWidget {
  static final String routeName = '/FAQsPageRoute';
  FAQsPage({Key key, this.title}) : super(key: key);
  

 
  final String title;

  @override
  _FAQsPageState createState() => _FAQsPageState();
}

class _FAQsPageState extends State<FAQsPage> {
  @override
  Widget build(BuildContext context) {
       return Scaffold(
         appBar: AppBar(
           backgroundColor: Color(0xFF21BFBD),
           title: Text('FAQs'),
           
         ),
          body: ListView(
            children: <Widget>[
              Divider(),
              ListTile(
                leading: IconButton(
                  icon: Icon(Icons.chat,
                  color: Color(0xFF21BFBD)),
                  color: Colors.blueAccent,
                  splashColor: Colors.blueAccent
                ),
                title: Text('What If I return the Item ?'),
              ),
              Divider(),
              ListTile(
                leading: IconButton(
                  icon: Icon(Icons.chat,
                  color: Color(0xFF21BFBD)),
                  color: Colors.blueAccent,
                  splashColor: Colors.blueAccent,
                ),
                title: Text('What If I return the Item ?'),
              ),
              Divider(),
              ListTile(
                leading: IconButton(
                  icon: Icon(Icons.chat,
                  color: Color(0xFF21BFBD)),
                  color: Colors.blueAccent,
                  splashColor: Colors.blueAccent
                ),
                title: Text('What If I return the Item ?'),
              ),
              Divider(),
              ListTile(
                leading: IconButton(
                  icon: Icon(Icons.chat,
                  color: Color(0xFF21BFBD)),
                  color: Colors.blueAccent,
                  splashColor: Colors.blueAccent
                ),
                title: Text('What If I return the Item ?'),
              ),
              Divider(),
              ListTile(
                leading: IconButton(
                  icon: Icon(Icons.chat,
                  color: Color(0xFF21BFBD)),
                  color: Colors.blueAccent,
                  splashColor: Colors.blueAccent
                ),
                title: Text('What If I return the Item ?'),
              ),
            ],
            

          ) ,
       );
  }
}