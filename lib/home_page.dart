import 'dart:convert';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Json Local Data"),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: DefaultAssetBundle.of(context)
            .loadString("assets/complex_data_4.json"),
        builder: (context, snapShot) {
          //this is for complex 1
          // var myData = json.decode(snapShot.data.toString());

          //this is for complex 2
          // var myData = json.decode(snapShot.data.toString());

          //this is for complex 3
          // var myData = json.decode(snapShot.data.toString());

          //this is for complex 4
          var myData = json.decode(snapShot.data.toString());

          if (myData == null) {
            // data will be null at some point of time
            return CircularProgressIndicator();
          } else {
            return Container(
              child: Center(
                child: Text(
                  // myData["age"], //this is for complex 1 [output :: 18]

                  // myData["1"]["salary"], // this is for complex 2 [output :: 50000]

                  // myData[1]["name"], // this is for complex 3 [output :: on]

                  myData[1]["balance"], // this is for complex 4 [output :: male]

                  style: TextStyle(
                    fontFamily: "Times New Roman",
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    wordSpacing: 5.0,
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
