import 'package:flutter/material.dart';
import 'package:naija_recipe/utils.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        children: <Widget>[
          Container(
            height: 80,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0)),
              boxShadow: [
                // to make elevation
                BoxShadow(
                  color: Colors.black45,
                  offset: Offset(2, 2),
                  blurRadius: 4,
                ),
                // to make the coloured border
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: NewTextField(),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 30.0,right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Popular',
                style: TextStyle(fontSize: 25.0,color: Colors.redAccent,fontWeight: FontWeight.bold, shadows: <Shadow>[
                  Shadow(
                    offset: Offset(0.0, 0.0),
                    blurRadius: 3.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ],),
                ),
                GestureDetector(
                  child: Row(
                    children: <Widget>[
                      Text('view all',
                      style: TextStyle(color: Color(0xffffffff),fontSize: 20,fontStyle: FontStyle.italic),),
                      Icon(Icons.navigate_next,
                      color: Colors.white)
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 25),
          SingleChildScrollView(
            padding: EdgeInsets.only(left: 30.0),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                NewCard(),
                SizedBox(width: 20),
                NewCard(),
                SizedBox(width: 20),
                NewCard(),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 30.0,right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Others',
                  style: TextStyle(fontSize: 25.0,color: Colors.black54,fontWeight: FontWeight.bold, shadows: <Shadow>[
                    Shadow(
                      offset: Offset(0.0, 0.0),
                      blurRadius: 3.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ],),
                ),
                GestureDetector(
                  child: Row(
                    children: <Widget>[
                      Text('more',
                        style: TextStyle(color: Color(0xffffffff),fontSize: 20,fontStyle: FontStyle.italic),),
                      Icon(Icons.navigate_next,
                          color: Colors.white)
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 25),
          Column(
            children: <Widget>[
              NewTile(),
//              SizedBox(height: 2.0),
              NewTile(),
              NewTile()
            ],
          )
        ],
      ),
    ));
  }
}
