import 'package:flutter/material.dart';
import 'package:vestanesia/shared/theme.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CardProgram extends StatelessWidget {
  const CardProgram({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'detail-program');
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: kWhiteColor,
            border: Border.all(color: kCardBorderColor)),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(left: 16),
              height: 140,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8),
                      bottomLeft: Radius.circular(8)),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        "assets/pisang1.png",
                      ))),
              child: Stack(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 11, vertical: 2),
                    decoration: BoxDecoration(
                        color: kOrangeColor,
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(8))),
                    child: Text(
                      "Bagi Hasil 12 Bulan",
                      style: whiteTextStyle.copyWith(
                          fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Text(
                    "Pengembangan Komoditi Pisang Cavendish (Musa acuminate/Cavendish)",
                    style: blackTextStyle.copyWith(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Periode Imbal",
                        style: greyTextStyle.copyWith(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Presentase Imbal",
                        style: greyTextStyle.copyWith(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Per 12 Bulan",
                        style: blackTextStyle.copyWith(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 2, horizontal: 4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: kPrimaryColor),
                        child: Text(
                          "27%",
                          style: whiteTextStyle.copyWith(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Investasi",
                        style: greyTextStyle.copyWith(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Target Dana",
                        style: greyTextStyle.copyWith(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Rp 800 Juta",
                        style: orangeTextStyle.copyWith(
                            fontSize: 10, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Rp 1 Milyar",
                        style: blackTextStyle.copyWith(
                            fontSize: 10, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  LinearPercentIndicator(
                    barRadius: const Radius.circular(4),
                    lineHeight: 8.0,
                    percent: 0.8,
                    progressColor: Colors.orange,
                    backgroundColor: Colors.grey[300],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Sisa 2 Hari lagi",
                        style: redTextStyle.copyWith(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "200 Unit Tersisa",
                        style: blackTextStyle.copyWith(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius:
                      const BorderRadius.vertical(bottom: Radius.circular(8))),
              child: Center(
                child: Text(
                  "Mulai Investasi",
                  style: whiteTextStyle.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
