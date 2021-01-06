import 'package:flutter/material.dart';
import 'package:tecmetra_cliente/widgets/svg-item/index.dart';

class LoginHeaderButton extends StatelessWidget {
  final String assetName;
  final Function onPressed;
  const LoginHeaderButton({Key key, this.assetName, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      minWidth: 160,
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.all(5),
        child: SvgIcon(
          assetsName: assetName,
          width: 30,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      onPressed: onPressed,
    );
  }
}
