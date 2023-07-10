import 'package:flutter/material.dart';


class TodayWidget extends StatefulWidget {
  const TodayWidget({Key? key}) : super(key: key);

  @override
  State<TodayWidget> createState() => _TodayWidgetState();
}

class _TodayWidgetState extends State<TodayWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 80, horizontal: 12),
      width: 300,
      height: 400,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        shape: BoxShape.circle,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 40,
          ),
          Center(
              child: Text(
                'Hoy',
                style: TextStyle(
                    fontSize: 60,
                    color: Theme.of(context).colorScheme.secondaryContainer,
                    fontFamily: 'Garamond'),
              )),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
