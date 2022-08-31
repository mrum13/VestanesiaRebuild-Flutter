import 'package:flutter/material.dart';
import 'package:vestanesia/shared/theme.dart';
import 'package:vestanesia/ui/widgets/card_img_detail_program.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:vestanesia/ui/widgets/primary_button.dart';

class DetailProgramPage extends StatelessWidget {
  const DetailProgramPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),

            //Noted: Detail Program Header
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
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      "assets/icon_back.png",
                      height: 36,
                      width: 26,
                    ),
                  ),
                  Text(
                    "Detail Program",
                    style: secondBlackTextStyle.copyWith(
                        fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  Image.asset(
                    "assets/icon_share.png",
                    height: 24,
                    width: 24,
                  )
                ],
              ),
            ),

            const SizedBox(
              height: 16,
            ),

            //Noted:List Card
            SizedBox(
              height: 160,
              child: Stack(
                children: [
                  ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      const SizedBox(
                        width: 16,
                      ),
                      CardImgDetailProgram(),
                      const SizedBox(
                        width: 16,
                      ),
                      CardImgDetailProgram(),
                      const SizedBox(
                        width: 16,
                      ),
                      CardImgDetailProgram(),
                      const SizedBox(
                        width: 16,
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 13),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 11, vertical: 2),
                    decoration: BoxDecoration(
                        color: kOrangeColor,
                        borderRadius: const BorderRadius.horizontal(
                            right: Radius.circular(8))),
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
              height: 16,
            ),

            //Noted: Content
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pengembangan Komoditi Pisang Cavendish (Musa acuminate/Cavendish)",
                    style: blackTextStyle.copyWith(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Lokasi",
                    style: greyTextStyle.copyWith(
                        fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Text(
                        "Jl. Macanda, Romangpolong, Kec. Somba Opu, Kabupaten Gowa, Sulawesi Selatan",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: blackTextStyle.copyWith(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      )),
                      const SizedBox(
                        width: 18,
                      ),
                      Image.asset(
                        "assets/icon_direction.png",
                        height: 24,
                        width: 24,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Periode Imbal",
                            style: greyTextStyle.copyWith(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Per 12 Bulan",
                            style: blackTextStyle.copyWith(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Presentase Imbal",
                            style: greyTextStyle.copyWith(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 2, horizontal: 4),
                            decoration: BoxDecoration(
                                color: kPrimaryColor,
                                borderRadius: BorderRadius.circular(4)),
                            child: Text(
                              "27%",
                              style: whiteTextStyle.copyWith(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: kBorderFormColor)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Berikut rincian, waktu dan proyeksi laporan keuangan telah dirangkum dalam file prospektus.",
                          style: blackTextStyle.copyWith(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: kPrimaryColor)),
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Center(
                            child: Text(
                              "Download Pdf",
                              style: primaryTextStyle.copyWith(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Deskripsi Program",
                    style: blackTextStyle.copyWith(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Pisang cavendish adalah jenis pisang yang saat ini sedang populer di Indonesia. Nama lain dari pisang cavendish adalah pisang ambon putih. Pisang cavendish dapat tumbuh di iklim tropis (tropical fruits). Selain rasanya nikmat untuk dikonsumsi, pisang cavendish juga banyak dijadikan sebagai bahan baku untuk makanan bayi. Misalnya saja diolah menjadi puree atau tepung pisang. Pisang cavendish sangat tepat dan cocok untuk makanan bayi, karena memiliki daging yang lunak sehingga nyaman untuk dikonsumsi balita.\n\nPisang dapat tumbuh di daerah tropis baik di dataran rendah maupun dataran tinggi dengan ketinggian tidak lebih dari 1.600 m di atas permukaan laut (mdpl). Suhu optimum untuk pertumbuhan adalah 270 C, dan suhu maksimumnya 380 C, dengan keasaman tanah (pH) 4,5-7,5.",
                    style: blackTextStyle.copyWith(
                        fontWeight: FontWeight.w400, fontSize: 14),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: kWhiteColor,
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                      color: Colors.black54,
                      blurRadius: 15.0,
                      offset: Offset(0.0, 0.75))
                ],
              ),
              width: double.infinity,
              padding: const EdgeInsets.only(
                bottom: 16,
              ),
              child: Column(
                children: [
                  LinearPercentIndicator(
                    padding: EdgeInsets.zero,
                    lineHeight: 4.0,
                    percent: 0.8,
                    progressColor: Colors.orange,
                    backgroundColor: Colors.grey[300],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
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
                            )
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
                                  fontSize: 14, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "Rp 1 Milyar",
                              style: blackTextStyle.copyWith(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Sisa 2 Hari Lagi",
                              style: redTextStyle.copyWith(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "200 Unit Tersisa",
                              style: secondBlackTextStyle.copyWith(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        PrimaryButton(text: "Mulai Investasi", onTap: () {})
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
