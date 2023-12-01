import 'package:flutter/material.dart';

extension WidgetExtension on Widget {
  Widget paddingHorizontal({double padding = 15}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: this,
    );
  }

  Widget paddingTop({double padding = 15}) {
    return Padding(
      padding: EdgeInsets.only(top: padding),
      child: this,
    );
  }
}
