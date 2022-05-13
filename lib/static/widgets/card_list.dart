import 'package:flutter/material.dart';

class CardList extends StatefulWidget {
  @override
  _CardListState createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListView(
          children: <Widget>[
            GestureDetector(
              onTap: (){debugPrint("abc");},
              child: Card(
                child: Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Exports projects to hit \$38\nbillion"),
                        Row(
                          children: [
                            Text("The Tribune Express"),
                            SizedBox(width: 100,),
                            Text(". 50"),
                            IconButton(
                              icon: Icon(Icons.share),
                              onPressed: () {},
                              iconSize: 15,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      height: 50,
                      width: 50,
                      child: Image.asset(
                        "images/export.png",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
