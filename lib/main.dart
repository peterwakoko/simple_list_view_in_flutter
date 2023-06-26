import "package:flutter/material.dart";
import "./app_screens/home.dart";

void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Exploring UI widgets",
        home: Scaffold(
          appBar: AppBar(title: Text("Basic List View"),),
          body: getListView(),
        ),
      )
  );
}

Widget getListView(){
  var listView = ListView(
    children: [
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape"),
        subtitle: Text("Beautiful view!"),
        trailing: Icon(Icons.wb_sunny),
        onTap: (){
          debugPrint("Landscape tapped");
        },
      ),
      ListTile(
        leading: Icon(Icons.laptop_chromebook),
        title: Text("Windows"),
        onTap: (){

        },
      ),
      ListTile(
        leading: Icon(Icons.phone),
        title: Text("Phone"),
        onTap: (){

        },
      ),
      ListTile(
        leading: Icon(Icons.account_box),
        title: Text("Account"),
        onTap: (){

        },
      ),
      Text("Yet another element in List"),
      Container(
        color: Colors.red,
        height: 50.0,
      )
    ],
  );
  return listView;
}