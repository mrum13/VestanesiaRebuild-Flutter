import 'package:flutter/material.dart';
import 'package:vestanesia/cubit/tab_program_cubit.dart';
import 'package:vestanesia/shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TabProgram extends StatelessWidget {
  final int index;
  final String title;

  const TabProgram({Key? key, required this.index, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<TabProgramCubit>().tabProgramSelected(index: index);
        print(index.toString());
        print("from cubit=${context.read<TabProgramCubit>().state}");
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 6),
        decoration: BoxDecoration(
            color: context.read<TabProgramCubit>().state == index
                ? kPrimaryColor
                : kWhiteColor,
            border: Border.all(
                color: context.read<TabProgramCubit>().state == index
                    ? kTransparentColor
                    : kCardBorderColor),
            borderRadius: index == 0
                ? BorderRadius.only(
                    topLeft: Radius.circular(4), bottomLeft: Radius.circular(4))
                : index == 1
                    ? BorderRadius.zero
                    : BorderRadius.only(
                        topRight: Radius.circular(4),
                        bottomRight: Radius.circular(4))),
        child: Center(
          child: Text(
            title,
            style: (context.read<TabProgramCubit>().state == index
                    ? whiteTextStyle
                    : greyTextStyle)
                .copyWith(fontSize: 12, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
