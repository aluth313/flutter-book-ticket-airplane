import 'package:flutter/material.dart';
import 'package:flutter_airplane/shared/theme.dart';

class CustomInterest extends StatelessWidget {
  final String name;

  const CustomInterest({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.only(right: 6),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/icon_check.png'))),
          ),
          Text(
            name,
            style: blackTextStyle.copyWith(fontWeight: regular),
          )
        ],
      ),
    );
  }
}
