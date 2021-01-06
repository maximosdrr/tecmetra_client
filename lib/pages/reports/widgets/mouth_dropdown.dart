import 'package:flutter/material.dart';
import 'package:tecmetra_cliente/widgets/dropdown-button/index.dart';

class ReportsMouthDropDown extends StatefulWidget {
  ReportsMouthDropDown({Key key}) : super(key: key);

  @override
  _ReportsMouthDropDownState createState() => _ReportsMouthDropDownState();
}

class _ReportsMouthDropDownState extends State<ReportsMouthDropDown> {
  String _myActivity = '';
  @override
  Widget build(BuildContext context) {
    return DropDownFormField(
      titleText: 'My workout',
      hintText: 'Jan',
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
          "display": "Jan",
          "value": "1",
        },
        {
          "display": "Fev",
          "value": "2",
        },
        {
          "display": "Mar",
          "value": "3",
        },
        {
          "display": "Abr",
          "value": "4",
        },
        {
          "display": "Mai",
          "value": "5",
        },
        {
          "display": "Jun",
          "value": "6",
        },
        {
          "display": "Jul",
          "value": "7",
        },
        {
          "display": "Ago",
          "value": "8",
        },
        {
          "display": "Set",
          "value": "9",
        },
        {
          "display": "Out",
          "value": "10",
        },
        {
          "display": "Nov",
          "value": "11",
        },
        {
          "display": "Dez",
          "value": "12",
        },
      ],
      textField: 'display',
      valueField: 'value',
    );
  }
}
