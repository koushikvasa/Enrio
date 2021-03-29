import 'package:flutter/material.dart';

class Payments extends StatelessWidget {
  static const routeName = '/payments';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        backgroundColor: Color(0xFF21BFBD),
        elevation: 2.0,
        title: Text(
          'Payment',
          style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        ),
      ),
      body: Column(
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(15),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Total', style: TextStyle(fontSize: 20)),
                  Spacer(),
                  Chip(
                    label: Text(
                      'amount',
                      //'\$${cart.totalamount.toString()}',
                      style: TextStyle(
                          color:
                              Theme.of(context).primaryTextTheme.title.color),
                    ),
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 125,
            child: Card(
              child: Row(children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage('assets/images/paytm1.png'),
                        fit: BoxFit.cover),
                  ),
                  height:45.0,
                  width: 140.0,
                ),
                Text(
                  'Gateway',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                 color: Colors.blue,
                  onPressed: () {},
                  child: Text(
                    'Pay Now',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ]),
            ),
          ),
          Container(
            height: 125,
            child: Card(
              child: Row(children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage('assets/images/Gpay.png'),
                        fit: BoxFit.cover),
                  ),
                  height:55.0,
                  width: 140.0,
                ),
               // Text(
                 // '',
                  //style: TextStyle(
                    //fontSize: 22,
                    //color: Colors.blueGrey,
                   // fontWeight: FontWeight.bold,
                 // ),
               // ),
                Spacer(),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                 color: Colors.blue,
                  onPressed: () {},
                  child: Text(
                    'Pay Now',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
