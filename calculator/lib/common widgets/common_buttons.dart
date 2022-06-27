import 'package:calculator/utils/functions.dart';
import 'package:flutter/material.dart';

class ButtonState extends StatefulWidget {
  final double ht;
  final double wd;
  final String text;
  ButtonState(
      {Key? key, required this.ht, required this.wd, required this.text})
      : super(key: key);

  @override
  State<ButtonState> createState() => _ButtonStateState();
}

class _ButtonStateState extends State<ButtonState> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SizedBox(
      height: widget.ht,
      width: widget.wd,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.white, // background
            onPrimary: Colors.grey,
            shadowColor: Colors.black45),
        onPressed: (() {
          calculation(text);
        }),
        child: Text(widget.text,
            style: const TextStyle(
              fontSize: 25,
              color: Colors.black54,
            )),
      ),
    ));
  }
}
