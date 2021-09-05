import 'package:flutter/material.dart';

import '../constant.dart';


class BuildFormField extends StatelessWidget {
  const BuildFormField({
    Key key,
    this.lableText,
  }) : super(key: key);

  final lableText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          labelText: lableText,
          labelStyle: TextStyle(
            color: kLableTextColor,
          )),
    );
  }
}


