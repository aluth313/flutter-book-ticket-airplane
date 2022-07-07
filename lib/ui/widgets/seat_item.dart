import 'package:flutter/material.dart';
import 'package:flutter_airplane/cubit/seat_cubit.dart';
import 'package:flutter_airplane/shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeatItem extends StatelessWidget {
  // status 0 = available, 1 = selected, 2 = unavailable
  final bool isAvailable;
  final String id;

  const SeatItem({Key? key, this.isAvailable = true, required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected = context.watch<SeatCubit>().isSelected(id);

    backgroundColor() {
      if (!isAvailable) {
        return kUnAvailabelColor;
      } else {
        if (isSelected) {
          return kPrimaryColor;
        } else {
          return kAvailabelColor;
        }
      }
    }

    borderColor() {
      if (!isAvailable) {
        return kUnAvailabelColor;
      } else {
        return kPrimaryColor;
      }
    }

    child() {
      if (isSelected) {
        return Center(
            child: Text(
          'You',
          style: whiteTextStyle.copyWith(fontWeight: semiBold),
        ));
      } else {
        return SizedBox();
      }
    }

    return GestureDetector(
      onTap: () {
        context.read<SeatCubit>().selectSeat(id);
      },
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
            color: backgroundColor(),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: borderColor(), width: 2)),
        child: child(),
      ),
    );
  }
}
