// ignore_for_file: prefer_const_literals_to_create_immutables, must_be_immutable, use_key_in_widget_constructors, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MoneyBox extends StatelessWidget {
  //! ไม่สามารถเปลี่ยนค่าได้ตลอดเวลา ทำงานครั้งเดียว
  String name;
  double amount;
  Color color;
  double size;

  MoneyBox(this.name, this.amount, this.color, this.size);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      height: size,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            name,
            style: const TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Expanded(
            child: Text(
              textAlign: TextAlign.right,
              '${NumberFormat("#,###.##").format(amount)}', //! style
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        ],
      ),
    );
    /* padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.lightGreenAccent,
                borderRadius: BorderRadius.circular(30)),
            height: 150,
            child: Row(
              children: [
                Text(
                  "Change : ",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold), //! bold = ตัวหนา
                ),
                Expanded(
                  child: Text(
                    "7000",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                )
              ],
            )),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(30)),
          height: 150,
          child: Row(
            children: [
              Text(
                "In : ",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Expanded(
                  child: Text(
                "3000",
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ))
            ],
          ),
      ); */
  }
}
