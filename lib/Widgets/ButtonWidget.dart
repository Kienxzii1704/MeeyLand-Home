import 'package:flutter/material.dart';

typedef onClickButton = void Function();

class ButtonWidget extends StatefulWidget {
  Color color;
  String title;
  Color colorBG;
  onClickButton? onClick;
  ButtonWidget(
      {this.color = Colors.white,
      this.title = '',
      this.onClick,
      this.colorBG = Colors.white});
  @override
  State<ButtonWidget> createState() => _ButtonState();
}

class _ButtonState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 78.25,
      height: 32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(70),
        color: widget.colorBG,
      ),
      child: TextButton(
          onPressed: widget.onClick,
          child: Text(
            widget.title,
            style: TextStyle(color: widget.color, fontSize: 13),
          )),
    );
  }
}

