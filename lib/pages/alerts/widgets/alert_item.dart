import 'package:flutter/material.dart';
import 'package:tecmetra_cliente/utils/default_gradient.dart';

class AlarmeItem extends StatelessWidget {
  const AlarmeItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        color: Colors.white,
      ),
      margin: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 20,
      ),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 60,
            width: 4,
            decoration: BoxDecoration(
              gradient: defaultGradient(),
              borderRadius: BorderRadius.all(
                Radius.circular(
                  10,
                ),
              ),
            ),
          ),
          Container(
            width: 37,
            child: Text("166b"),
          ),
          Container(
            width: 27,
            child: Text("302"),
          ),
          Container(
            width: 25,
            alignment: Alignment.centerRight,
            child: Icon(
              Icons.notifications,
              color: Colors.grey,
            ),
          ),
          Container(
            width: 85,
            alignment: Alignment.centerRight,
            child: Text("a15B006267"),
          ),
          Container(
            width: 70,
            margin: EdgeInsets.only(
              right: 5,
            ),
            child: Text("655,221m³"),
          ),
        ],
      ),
    );
  }
}
