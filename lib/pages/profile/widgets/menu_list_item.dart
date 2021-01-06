import 'package:flutter/material.dart';
import 'package:tecmetra_cliente/extensios/hex.dart';

class ProfileMenuListItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Function onTap;
  const ProfileMenuListItem(
      {Key key, this.title, this.subtitle, this.icon, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
        color: Colors.white,
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
      ),
      child: ListTile(
        onTap: onTap,
        title: Text(
          title,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        leading: Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: HexColor.fromHex('#7D8CC4'),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Icon(
            icon,
            size: 38,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
