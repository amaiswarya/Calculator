import 'package:calculator/common%20widgets/common_widgets.dart';
import 'package:calculator/utils/functions.dart';
import 'package:flutter/material.dart';

import '../common widgets/common_buttons.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Container(
              padding: const EdgeInsets.all(15),
              alignment: Alignment.centerRight,
              child: Text(
                finalResult,
                style: const TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )),
          SpaceWidgets().VerticalSpacing(75),
          Container(
              padding: const EdgeInsets.all(15),
              alignment: Alignment.centerRight,
              child: Text(
                '$text',
                style: const TextStyle(
                    fontSize: 30,
                    color: Colors.black26,
                    fontWeight: FontWeight.bold),
              )),
          SpaceWidgets().VerticalSpacing(25),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            ButtonState(ht: 60, wd: 90, text: "AC"),
            SpaceWidgets().HorizontalSpacing(10),
            ButtonState(ht: 60, wd: 90, text: "C"),
            SpaceWidgets().HorizontalSpacing(10),
            ButtonState(ht: 60, wd: 90, text: "%"),
            ButtonState(ht: 60, wd: 90, text: "+/-"),
          ]),
          SpaceWidgets().VerticalSpacing(25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonState(ht: 60, wd: 90, text: "7"),
              SpaceWidgets().HorizontalSpacing(10),
              ButtonState(ht: 60, wd: 90, text: "8"),
              SpaceWidgets().HorizontalSpacing(10),
              ButtonState(ht: 60, wd: 90, text: "9"),
              SpaceWidgets().VerticalSpacing(25),
              ButtonState(ht: 60, wd: 90, text: "x"),
            ],
          ),
          SpaceWidgets().VerticalSpacing(25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonState(ht: 60, wd: 90, text: "4"),
              SpaceWidgets().HorizontalSpacing(10),
              ButtonState(ht: 60, wd: 90, text: "5"),
              SpaceWidgets().HorizontalSpacing(10),
              ButtonState(ht: 60, wd: 90, text: "6"),
              SpaceWidgets().HorizontalSpacing(10),
              ButtonState(ht: 60, wd: 90, text: "-"),
            ],
          ),
          SpaceWidgets().VerticalSpacing(25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonState(ht: 60, wd: 90, text: "1"),
              SpaceWidgets().HorizontalSpacing(10),
              ButtonState(ht: 60, wd: 90, text: "2"),
              SpaceWidgets().HorizontalSpacing(10),
              ButtonState(ht: 60, wd: 90, text: "3"),
              SpaceWidgets().HorizontalSpacing(10),
              ButtonState(ht: 60, wd: 90, text: "+"),
            ],
          ),
          SpaceWidgets().VerticalSpacing(25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonState(ht: 60, wd: 90, text: "0"),
              SpaceWidgets().HorizontalSpacing(10),
              ButtonState(ht: 60, wd: 90, text: "."),
              SpaceWidgets().HorizontalSpacing(10),
              SizedBox(
                height: 65,
                width: 170,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.orange, // background
                        onPrimary: Colors.white,
                        shadowColor: Colors.black45),
                    onPressed: (() {}),
                    child: const Text(
                      "=",
                      style: TextStyle(fontSize: 45, color: Colors.white),
                    )),
              ),
            ],
          )
        ],
      )),
    );
  }
}
