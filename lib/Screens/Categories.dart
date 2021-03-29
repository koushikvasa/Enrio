import 'package:flutter/material.dart';
import 'package:demo_app/main.dart';
class CategoryPage extends StatefulWidget {
  static final String routeName = '/CategoryPageRoute';
  CategoryPage({Key key, this.title}) : super(key: key);

 
  final String title;

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
       return Scaffold(
         appBar: AppBar(
           title: Text('Shop by Category'),
         ),

       );
  }
}