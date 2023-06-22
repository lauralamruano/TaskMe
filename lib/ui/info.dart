import 'package:block/themes/theme.dart';
import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: lightColorScheme.primary,
      child: Column(
        children: [
          SizedBox(height: 60,),
          Text('Creado por Laura Lam', style: TextStyle(color: lightColorScheme.onPrimary, fontSize: 20),),
          SizedBox(height: 60,),
          Text('Version 1.0', style: TextStyle(color: lightColorScheme.onPrimary, fontSize: 20),)
        ],
      ),
    );
  }
}
