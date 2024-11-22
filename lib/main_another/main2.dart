// ignore_for_file: prefer_const_constructors

import 'package:basic_app_2/foodmaenu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Myappstate(),
    );
  }
}

class Myappstate extends StatefulWidget {
  const Myappstate({super.key});

  @override
  State<Myappstate> createState() => _MyappstateState();
}

class _MyappstateState extends State<Myappstate> {
  int number1 = 0;
  @override
  Widget build(BuildContext context) {
    //!
    List<FoodMenu> menu = [
      FoodMenu("Kongpow", "90" /* , "assets/image/picture1.jpg" */),
      FoodMenu("Snack", "9000" /* , "assets/image/picture1.jpg" */),
      FoodMenu("Kaproa", "50000")
    ];

    /* List<Widget> getdata(var number) {
      List<Widget> data = [];
      for (var i = 0; i < number; i++) {
        var menu = ListTile( 
          title: Text("Menu : ${i + 1}"),
          subtitle: Text("Data Menu : ${i + 1}"),
        );
        data.add(menu);
      }
      return data;
    } */

    return Scaffold(
        appBar: AppBar(
          title: Text("Program count Number:"),
        ),
        body: ListView.builder(
            itemCount: menu.length,
            itemBuilder: (BuildContext context, int index) {
              FoodMenu food = menu[index];
              return ListTile(
                /* leading: Image.asset(food.img), */
                title: Text("Menu ${index + 1} : ${food.name}"),
                subtitle: Text("Price : ${food.price}"),
              );
            })
        /* floatingActionButton: FloatingActionButton(
        onPressed: () {
          //! ใส่ Condition
          setState(() {
            number1++;
          });
        },
        child: Icon(Icons.add),
      ), */
        );
  }
}
