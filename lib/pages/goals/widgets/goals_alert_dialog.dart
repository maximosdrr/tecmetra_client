import 'package:flutter/material.dart';
import 'package:tecmetra_cliente/widgets/app-button/index.dart';
import 'package:tecmetra_cliente/widgets/dropdown-button/index.dart';

class AddGoalAlertDialog extends StatefulWidget {
  const AddGoalAlertDialog({Key key}) : super(key: key);

  @override
  _AddGoalAlertDialogState createState() => _AddGoalAlertDialogState();
}

class _AddGoalAlertDialogState extends State<AddGoalAlertDialog> {
  String _myActivity = '';
  @override
  Widget build(BuildContext context) {
    double _slideValue = 0;
    return Container(
      child: StatefulBuilder(
        builder: (context, setState) {
          return AlertDialog(
            titlePadding: EdgeInsets.all(0),
            contentPadding: EdgeInsets.all(0),
            title: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.white,
              centerTitle: true,
              elevation: 0,
              title: Text(
                "Adicionar Meta",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            content: Container(
              height: 230,
              width: 350,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      left: 15,
                      top: 10,
                      bottom: 10,
                    ),
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 100,
                      child: DropDownFormField(
                        hintText: 'Mês',
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
                            "display": "Janeiro",
                            "value": "1",
                          },
                          {
                            "display": "Fevereiro",
                            "value": "2",
                          },
                          {
                            "display": "Março",
                            "value": "3",
                          },
                          {
                            "display": "Abril",
                            "value": "4",
                          },
                          {
                            "display": "Maio",
                            "value": "5",
                          },
                          {
                            "display": "Junho",
                            "value": "6",
                          },
                          {
                            "display": "Julho",
                            "value": "7",
                          },
                          {
                            "display": "Agosto",
                            "value": "8",
                          },
                          {
                            "display": "Setembro",
                            "value": "9",
                          },
                          {
                            "display": "Outubro",
                            "value": "10",
                          },
                          {
                            "display": "Novembro",
                            "value": "11",
                          },
                          {
                            "display": "Dezembro",
                            "value": "12",
                          },
                        ],
                        textField: 'display',
                        valueField: 'value',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: 15,
                    ),
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(top: 10),
                    child: Text("Consumo"),
                  ),
                  Container(
                    child: Slider(
                      value: _slideValue,
                      max: 100,
                      min: 0,
                      onChanged: (value) {
                        setState(() {
                          _slideValue = value;
                        });
                      },
                    ),
                  ),
                  Container(
                    child: AppButton(
                      width: 280,
                      text: "Adicionar",
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
