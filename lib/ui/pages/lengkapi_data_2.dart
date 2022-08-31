import 'package:flutter/material.dart';
import 'package:vestanesia/shared/theme.dart';
import 'package:vestanesia/ui/widgets/header_1.dart';
import 'package:vestanesia/ui/widgets/primary_button.dart';

class LengkapiData2Page extends StatefulWidget {
  const LengkapiData2Page({Key? key}) : super(key: key);

  @override
  State<LengkapiData2Page> createState() => _LengkapiData2PageState();
}

class _LengkapiData2PageState extends State<LengkapiData2Page> {
  bool isChecked = false;
  bool isTap = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          Header1(title: "Lengkapi Data"),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Data Pribadi",
                      style: blackTextStyle.copyWith(
                          fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Langkah 2/2",
                      style: greyTextStyle.copyWith(
                          fontSize: 12, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Foto KTP",
                  style: greyTextStyle.copyWith(
                      fontSize: 12, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 4,
                ),
                Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: kThirdGreyColor,
                    border: Border.all(color: kBorderFormColor),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/icon_camera.png",
                          height: 24,
                          width: 24,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          "foto e-KTP",
                          style: greyTextStyle.copyWith(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Upload Foto Selfie dengan KTP",
                  style: greyTextStyle.copyWith(
                      fontSize: 12, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 4,
                ),
                Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: kThirdGreyColor,
                    border: Border.all(color: kBorderFormColor),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/icon_camera.png",
                          height: 24,
                          width: 24,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          "foto selfi dengan e-KTP",
                          style: greyTextStyle.copyWith(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: kBorderFormColor,
                ),
                const SizedBox(
                  height: 14,
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 16,
                      width: 16,
                      child: Checkbox(
                          value: isChecked,
                          activeColor: kWhiteColor,
                          checkColor: kPrimaryColor,
                          side: MaterialStateBorderSide.resolveWith(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.selected)) {
                              return BorderSide(color: kPrimaryColor);
                            }
                            return BorderSide(
                                color:
                                    kPrimaryColor); // Defer to default value on the theme or widget.
                          }),
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          }),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                        child: Text(
                      "Saya menyatakan bahwa data yang telah tercantum diatas adalah benar dan saya telah melakukan pengecekan serta dalam kondisi keadaan sadar.",
                      style: blackTextStyle.copyWith(
                          fontSize: 12, fontWeight: FontWeight.w400),
                    )),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                  decoration: BoxDecoration(
                    border: Border.all(color: kPrimaryColor),
                    borderRadius: BorderRadius.circular(4),
                    color: Color(0xffE8F2EB),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 16,
                        width: 16,
                        child: Checkbox(
                            value: isTap,
                            activeColor: kWhiteColor,
                            checkColor: kPrimaryColor,
                            side: MaterialStateBorderSide.resolveWith(
                                (Set<MaterialState> states) {
                              if (states.contains(MaterialState.selected)) {
                                return BorderSide(color: kPrimaryColor);
                              }
                              return BorderSide(
                                  color:
                                      kPrimaryColor); // Defer to default value on the theme or widget.
                            }),
                            onChanged: (bool? value) {
                              setState(() {
                                isTap = value!;
                              });
                            }),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Saya setuju dengan syarat dan ketentuan",
                        style: primaryTextStyle.copyWith(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                PrimaryButton(
                    text: "Selesai",
                    onTap: () {
                      Navigator.pushNamed(context, "main");
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}
