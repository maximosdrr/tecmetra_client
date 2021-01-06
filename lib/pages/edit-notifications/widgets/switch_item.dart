import 'package:flutter/material.dart';

class EditNotificationSwitchItem extends StatefulWidget {
  final String title;
  final String subtitle;
  EditNotificationSwitchItem({
    Key key,
    this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  _EditNotificationSwitchItemState createState() =>
      _EditNotificationSwitchItemState();
}

class _EditNotificationSwitchItemState
    extends State<EditNotificationSwitchItem> {
  bool switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            10,
          ),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: ListTile(
        title: Text(
          widget.title,
        ),
        subtitle: Text(
          widget.subtitle,
        ),
        trailing: Switch(
          value: switchValue,
          onChanged: (value) {
            setState(() {
              switchValue = value;
            });
          },
        ),
      ),
    );
  }
}
