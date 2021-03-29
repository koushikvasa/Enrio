import 'package:flutter/material.dart';

class Wallet extends StatelessWidget {
  static const routeName = '/wallet';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: <Widget>[
        SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back_ios),
              color: Colors.black,
            ),
          ],
        ),
        Container(
          height: 275,
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Icon(
                Icons.account_balance_wallet,
                size: 150,
                color: Color(0xFF21BFBD),
              ),
              Text(
                'Wallet',
                style: TextStyle(
                  color: Color(0xFF21BFBD),
                  fontWeight: FontWeight.bold,
                  fontSize: 45,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 500,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color(0xFF21BFBD),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(45.0),
              topRight: Radius.circular(45.0),
            ),
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Text(
                  '₹Amount',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.w500
                  ),
                ),
              ),
              Text('Avialable Cash',
              style:  TextStyle(
                  fontSize: 25,
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                ),)
            ],
          ),
        )
      ]),
    );
  }
}
