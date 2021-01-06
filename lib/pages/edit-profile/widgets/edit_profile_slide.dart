import 'package:flutter/material.dart';

class EditProfileSlide extends StatefulWidget {
  final double factor;
  EditProfileSlide({Key key, this.factor: 10}) : super(key: key);

  @override
  _EditProfileSlideState createState() => _EditProfileSlideState();
}

class _EditProfileSlideState extends State<EditProfileSlide> {
  double _1slideValue = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width - 80,
          margin: EdgeInsets.only(
            left: 5,
          ),
          child: Slider(
            value: _1slideValue,
            onChanged: (value) {
              setState(() {
                _1slideValue = value;
              });
            },
          ),
        ),
        Container(
          width: 40,
          child: Text(
            (_1slideValue * widget.factor).round().toString(),
          ),
        )
      ],
    );
  }
}
