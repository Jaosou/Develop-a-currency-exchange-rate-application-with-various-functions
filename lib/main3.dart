// ignore_for_file: prefer_const_constructors

import 'package:basic_app_2/exchange_rate.dart';
import 'package:basic_app_2/moneybox.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Myappstate(),
    );
  }
}

class Myappstate extends StatefulWidget {
  //! ใช้ setstate ในการเรียกทำงาน เปลี่ยนแปลงค่าได้ตลอดเวลา
  const Myappstate({super.key});

  @override
  State<Myappstate> createState() => _MyappstateState();
}

class _MyappstateState extends State<Myappstate> {
  Welcome? _data;

  @override
  void initState() {
    super.initState();
    getExchangeRate();
    //print("Run init state");
  }

  Future<Welcome?> getExchangeRate() async {
    var url = 'https://6635b973f7c14edaa8de2623a5c79d16.api.mockbin.io/';
    var response = await http.get(Uri.parse(url));
    _data = welcomeFromJson(response.body);
    return _data;
    //print("Get data exchange");
  }

  @override
  Widget build(BuildContext context) {
    //print("Run build");
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text(
            "Exchange rate",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: FutureBuilder(
          future: getExchangeRate(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> shapshot) {
            if (shapshot.connectionState == ConnectionState.done) {
              //!ดึงข้อมูลจาก getExchange มาครบละจะให้ทำอะไร
              var result = shapshot.data;
              return Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    MoneyBox("EUR : ", 1, Colors.deepPurple, 150),
                    SizedBox(
                      height: 10,
                    ),
                    MoneyBox(
                        "Thai : ", result.rates["THB"], Colors.deepPurple, 150),
                    SizedBox(
                      height: 10,
                    ),
                    MoneyBox(
                        "USD : ", result.rates["USD"], Colors.deepOrange, 150)
                  ],
                ),
              );
              /* return Text("ครบแล้ว"); */
            }
            return LinearProgressIndicator();
          },
        ));
  }
}
