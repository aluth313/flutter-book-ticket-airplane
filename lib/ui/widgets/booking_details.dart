import 'package:flutter/material.dart';
import 'package:flutter_airplane/shared/theme.dart';
import 'package:flutter_airplane/ui/widgets/custom_interests.dart';

class BookingDetails extends StatelessWidget {
  final String name;
  final String details;
  final TextStyle? style;

  const BookingDetails(
      {Key? key, required this.name, required this.details, this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          CustomInterest(name: name),
          Text(
            details,
            style: style == null
                ? blackTextStyle.copyWith(fontWeight: semiBold)
                : style,
          )
        ],
      ),
    );
  }
}
