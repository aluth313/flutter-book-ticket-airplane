import 'package:flutter/material.dart';
import 'package:flutter_airplane/cubit/page_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/theme.dart';

class CustomBottomNavigation extends StatelessWidget {
  final String urlImage;
  final int index;

  const CustomBottomNavigation(
      {Key? key, required this.urlImage, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Image.asset(
            urlImage,
            width: 24,
            height: 24,
            color: context.read<PageCubit>().state == index
                ? kPrimaryColor
                : kGreyColor,
          ),
          Container(
            width: 30,
            height: 2,
            decoration: BoxDecoration(
                color: context.read<PageCubit>().state == index
                    ? kPrimaryColor
                    : kTransparentColor,
                borderRadius: BorderRadius.circular(18)),
          ),
        ],
      ),
    );
  }
}
