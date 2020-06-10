import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.left,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(20.0),
        suffixIcon: Icon(
          Icons.search,
          color: Colors.white,
        ),
        border: OutlineInputBorder(
// width: 0.0 produces a thin "hairline" border
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            borderSide: BorderSide(color: Colors.white24)
//borderSide: const BorderSide(),
            ),

// hintStyle: TextStyle(color: Colors.white,fontFamily: "WorkSansLight"),
        filled: true,
        fillColor: Color(0xfff2c200),
        hintText: 'Search iCook',
        hintStyle: TextStyle(fontSize: 20.0, color: Colors.white70),
      ),
    );
  }
}

class NewCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: Container(
          alignment: Alignment.bottomCenter,
          height: 200,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('images/fried.jpeg'),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 2.0,
                spreadRadius: 0.0,
                offset: Offset(2.0, 2.0), // shadow direction: bottom right
              )
            ],
          ),
          child: Padding(
              padding: EdgeInsets.all(12.0),
              child: FlatButton(
                onPressed: () {},
                color: Colors.redAccent,
                child: Text(
                  'Fried Rice',
                  style: TextStyle(fontSize: 20),
                ),
              ))),
    );
  }
}

class NewTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: Container(
        height: 100,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 2.0,
              spreadRadius: 0.0,
              offset: Offset(2.0, 2.0), // shadow direction: bottom right
            )
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: ListTile(
            leading: Container(
              height: 70.0,
              width: 80.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  image: AssetImage('images/index.jpeg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            title: Text(
              'Egusi Soup',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'Egusi is arguably Nigeria\'s most popular soup...',
              style: TextStyle(fontSize: 20.0, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
