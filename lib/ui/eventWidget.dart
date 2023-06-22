import 'package:block/themes/theme.dart';
import 'package:flutter/material.dart';


class EventWidget extends StatelessWidget {
  const EventWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
        width: 30,
        height: 40,
        decoration: BoxDecoration(
          color: lightColorScheme.secondaryContainer,
          shape: BoxShape.circle,)
    );
  }
}
