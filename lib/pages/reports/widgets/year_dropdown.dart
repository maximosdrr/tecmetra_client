import 'package:flutter/material.dart';
import 'package:tecmetra_cliente/widgets/dropdown-button/index.dart';

class ReportsYearDropDown extends StatefulWidget {
  ReportsYearDropDown({Key key}) : super(key: key);

  @override
  _ReportsYearDropDownState createState() => _ReportsYearDropDownState();
}

class _ReportsYearDropDownState extends State<ReportsYearDropDown> {
  String _myActivity = '';
  @override
  Widget build(BuildContext context) {
    return DropDownFormField(
      titleText: 'My workout',
      hintText: '20',
      value: _myActivity,
      onSaved: (value) {
        setState(() {
          _myActivity = value;
        });
      },
      onChanged: (value) {
        setState(() {
          _myActivity = value;
        });
      },
      dataSource: [
        {
          "display": "10",
          "value": "1",
        },
        {
          "display": "11",
          "value": "2",
        },
        {
          "display": "12",
          "value": "3",
        },
        {
          "display": "13",
          "value": "4",
        },
        {
          "display": "14",
          "value": "5",
        },
        {
          "display": "15",
          "value": "6",
        },
        {
          "display": "16",
          "value": "7",
        },
        {
          "display": "17",
          "value": "8",
        },
        {
          "display": "18",
          "value": "9",
        },
        {
          "display": "19",
          "value": "10",
        },
        {
          "display": "20",
          "value": "11",
        },
        {
          "display": "21",
          "value": "12",
        },
      ],
      textField: 'display',
      valueField: 'value',
    );
  }
}
