import 'package:flutter/material.dart';

extension Expand on Widget {
  Expanded get expand => Expanded(child: this);
  Expanded expandFlex(int flex) => Expanded(
        child: this,
        flex: flex,
      );
}
