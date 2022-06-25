import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomBottomNavigation extends StatefulWidget {
  final String urlImage;
  final bool isSelected;

  const CustomBottomNavigation(
      {Key? key, required this.urlImage, this.isSelected = false})
      : super(key: key);

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(widget.urlImage))),
        ),
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
              color: widget.isSelected ? kPrimaryColor : kTransparentColor,
              borderRadius: BorderRadius.circular(18)),
        ),
      ],
    );
  }
}
