// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

//! Material app = Make app
void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    /*   = [
      FoodMenu("Kongpow", "90"),
      FoodMenu("Snack", "9000")
    ]; */

    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text("My App Bar"),
        backgroundColor: Colors.blue,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              print("Hello");
            },
            tooltip: "Home",
            icon: Icon(Icons.home)), //! ใส่ไอคอนเมนู
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
          IconButton(onPressed: () {}, icon: Icon(Icons.abc_outlined))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start, //! แนบด้านขวา
        children: [
          //1st
          Container(
            height: 200,
            color: Colors.deepPurple,
          ),
          //2sd
          Container(
            height: 200,
            color: Colors.deepPurple[400],
          ),
          //3rd
          Expanded(child: Container(color: Colors.deepPurple[200])),
          //! image
          Center(
            child: Image(
                image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2023/11/15/15/04/leaves-8390274_1280.jpg')),
          ),
        ],
      ),
    );
  }
}

/* Text(
              "Hello Dart",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 29,
                  fontWeight: FontWeight.bold),
            ) */

/* child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20) //!curve box
                ),
            padding: EdgeInsets.all(50),
            /* padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30), */ //! เว้นระยะห่าง
            child: Icon(
              Icons.favorite,
              color: Colors.white,
              size: 64, */


/* appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 4, 53, 5),
        title: Text(
          "บัญชี",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w300, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            MoneyBox("Money : ", 7000, Colors.deepPurple, 150),
            SizedBox(
              height: 10,
            ),
            MoneyBox("Change", 6000, Colors.purpleAccent, 150),
            SizedBox(
              height: 10,
            ),
            MoneyBox("In :", 10000, Colors.greenAccent, 150)
          ],
        ),
      ), */
            