import 'package:flutter/material.dart';
import 'package:tecmetra_cliente/extensios/hex.dart';

defaultGradient() => LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [
        HexColor.fromHex('#7D51CD'),
        HexColor.fromHex('#1AC9F4'),
      ],
    );
