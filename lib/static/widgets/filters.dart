import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:investors_lounge/static/screens/homePage.dart';
import 'package:investors_lounge/static/widgets/button.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class Filters extends StatefulWidget {
  @override
  _FiltersState createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xff25cd9c),
            ),
            onPressed: () {
             Navigator.pop(context);
            }),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Filters",
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
              iconSize: 16,
              icon: Icon(
                Icons.help,
                color: Colors.grey,
              ),
              onPressed: () {}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10),
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text(
                "Type",
                style: TextStyle(color: Colors.grey),
              ),
              trailing: Icon(Icons.arrow_drop_down),
              onTap: () {
                showMaterialModalBottomSheet(
                  context: context,
                  builder: (context) => Container(
                    height: height * 0.2,
                    color: Colors.green,
                  ),
                );
              },
            ),
            Divider(
              color: Colors.grey,
              thickness: 0.8,
            ),
            ListTile(
              title: Text(
                "Provider",
                style: TextStyle(color: Colors.grey),
              ),
              trailing: Icon(Icons.arrow_drop_down),
              onTap: () {
                showMaterialModalBottomSheet(
                  context: context,
                  builder: (context) => Container(
                    height: height * 0.2,
                    color: Colors.green,
                  ),
                );
              },
            ),
            Divider(
              color: Colors.grey,
              thickness: 0.8,
            ),
            ListTile(
              title: Text(
                "Sector",
                style: TextStyle(color: Colors.grey),
              ),
              trailing: Icon(Icons.arrow_drop_down),
              onTap: () {
                showMaterialModalBottomSheet(
                  context: context,
                  builder: (context) => Container(
                    height: height * 0.2,
                    color: Colors.green,
                  ),
                );
              },
            ),
            Divider(
              color: Colors.grey,
              thickness: 0.8,
            ),
            ListTile(
              title: Text(
                "Company",
                style: TextStyle(color: Colors.grey),
              ),
              trailing: Icon(Icons.arrow_drop_down),
              onTap: () {
                showMaterialModalBottomSheet(
                  context: context,
                  builder: (context) => Container(
                    height: height * 0.2,
                    color: Colors.green,
                  ),
                );
              },
            ),
            Divider(
              color: Colors.grey,
              thickness: 0.8,
            ),
            ListTile(
              title: Text(
                "Date From",
                style: TextStyle(color: Colors.grey),
              ),
              trailing: Icon(Icons.arrow_drop_down),
              onTap: () {
                showMaterialModalBottomSheet(
                  context: context,
                  builder: (context) => Container(
                    height: height * 0.2,
                    color: Colors.green,
                  ),
                );
              },
            ),
            Divider(
              color: Colors.grey,
              thickness: 0.8,
            ),
            ListTile(
              title: Text(
                "Date To",
                style: TextStyle(color: Colors.grey),
              ),
              trailing: Icon(Icons.arrow_drop_down),
              onTap: () {
                showMaterialModalBottomSheet(
                  context: context,
                  builder: (context) => Container(
                    height: height * 0.2,
                    color: Colors.green,
                  ),
                );
              },
            ),
            Divider(
              color: Colors.grey,
              thickness: 0.8,
            ),
            // DropdownButton(
            //   items: null,
            //   hint: Text("Type"),
            //   isExpanded: true,
            //   onTap: (){
            //     showMaterialModalBottomSheet(
            //       context: context,
            //       builder: (context) => Container(
            //         height: height*0.2,
            //         color: Colors.green,
            //       ),
            //     );
            //   },
            // ),
            // SizedBox(height: height*0.02,),
            // DropdownButton(
            //   items: [],
            //   hint: Text("provider"),
            //   isExpanded: true,
            // ),
            // SizedBox(height: height*0.02,),
            // DropdownButton(
            //   items: [],
            //   hint: Text("sector"),
            //   isExpanded: true,
            // ),
            // SizedBox(height: height*0.02,),
            // DropdownButton(
            //   items: [],
            //   hint: Text("company"),
            //   isExpanded: true,
            // ),
            // SizedBox(height: height*0.02,),
            // DropdownButton(
            //   items: [],
            //   hint: Text("Date From"),
            //   isExpanded: true,
            // ),
            // SizedBox(height: height*0.02,),
            // DropdownButton(
            //   items: [],
            //   hint: Text("Date To"),
            //   isExpanded: true,
            // ),
            SizedBox(
              height: height * 0.03,
            ),
            ButtonWidget(text: "Submit", onClicked: () {})
          ],
        ),
      ),
    );
  }
}

class ModalBottomSheetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Text('showModalBottomSheet');
  }
}
