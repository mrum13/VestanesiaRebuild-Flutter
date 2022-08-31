import 'package:flutter/material.dart';
import 'package:vestanesia/cubit/tab_program_cubit.dart';
import 'package:vestanesia/shared/theme.dart';
import 'package:vestanesia/ui/widgets/card_program.dart';
import 'package:vestanesia/ui/widgets/tab_program.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProgramPage extends StatelessWidget {
  const ProgramPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<TabProgramCubit, int>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 24,
              ),

              //Noted : Program Header
              Container(
                decoration: BoxDecoration(color: kWhiteColor, boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 6,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ]),
                height: 56,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/icon_logo_without_title.png",
                      height: 36,
                      width: 26,
                    ),
                    Text(
                      "Program",
                      style: secondBlackTextStyle.copyWith(
                          fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    Image.asset(
                      "assets/icon_chat.png",
                      height: 24,
                      width: 24,
                    )
                  ],
                ),
              ),

              const SizedBox(
                height: 16,
              ),

              //Noted: TabBar
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                    color: kWhiteColor, borderRadius: BorderRadius.circular(4)),
                child: Row(
                  children: [
                    Expanded(
                        child: TabProgram(
                      index: 0,
                      title: "Semua",
                    )),
                    Expanded(
                        child: TabProgram(
                      index: 1,
                      title: "Tersedia",
                    )),
                    Expanded(
                      child: TabProgram(
                        index: 2,
                        title: "Selesai",
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CardProgram(),
              const SizedBox(
                height: 22,
              ),
              CardProgram(),
              const SizedBox(
                height: 22,
              ),
              CardProgram(),
              const SizedBox(
                height: 22,
              ),
            ],
          ),
        );
      },
    ));
  }
}
