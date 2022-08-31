import 'package:flutter/material.dart';
import 'package:vestanesia/cubit/page_cubit.dart';
import 'package:vestanesia/shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavigationItem extends StatelessWidget {
  final String icon0;
  final String icon1;
  final String text;
  final int index;

  const BottomNavigationItem({
    Key? key,
    required this.icon0,
    required this.icon1,
    required this.text,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        color: kWhiteColor,
        child: Column(
          children: [
            Image.asset(
              context.read<PageCubit>().state == index ? icon1 : icon0,
              height: 24,
              width: 24,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              text,
              style: context.read<PageCubit>().state == index
                  ? primaryTextStyle.copyWith(
                      fontSize: 12, fontWeight: FontWeight.w600)
                  : greyTextStyle.copyWith(
                      fontSize: 12, fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
