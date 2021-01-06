import 'package:flutter/material.dart';
import 'package:tecmetra_cliente/extensios/hex.dart';

class ConsumeCustomRowButton extends StatefulWidget {
  final bool isActive;
  final Function onPressed;
  final String text;
  ConsumeCustomRowButton(
      {Key key,
      this.isActive: false,
      @required this.onPressed,
      @required this.text})
      : super(key: key);

  @override
  _ConsumeCustomRowButtonState createState() => _ConsumeCustomRowButtonState();
}

class _ConsumeCustomRowButtonState extends State<ConsumeCustomRowButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      child: FlatButton(
        color: widget.isActive ? HexColor.fromHex('#DFE7F5') : Colors.white,
        child: Text(
          widget.text,
          style: TextStyle(
            fontSize: 16,
            color: widget.isActive ? Colors.blue : Colors.black,
          ),
        ),
        onPressed: widget.onPressed,
      ),
    );
  }
}
