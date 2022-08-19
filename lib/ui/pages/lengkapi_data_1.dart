import 'package:flutter/material.dart';
import 'package:vestanesia/shared/theme.dart';
import 'package:vestanesia/ui/widgets/dropdown_with_title.dart';
import 'package:vestanesia/ui/widgets/form_input_with_title.dart';
import 'package:vestanesia/ui/widgets/header_1.dart';
import 'package:vestanesia/ui/widgets/primary_button.dart';

class LengkapiData1Page extends StatefulWidget {
  const LengkapiData1Page({Key? key}) : super(key: key);

  @override
  State<LengkapiData1Page> createState() => _LengkapiData1PageState();
}

class _LengkapiData1PageState extends State<LengkapiData1Page> {
  int groupJenisKelamin = 0;

  setSelectedRadio(int val) {
    setState(() {
      groupJenisKelamin = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController namaController = TextEditingController();
    TextEditingController tempatLahirController = TextEditingController();
    TextEditingController tanggalLahirController = TextEditingController();
    TextEditingController namaIbuController = TextEditingController();
    TextEditingController pendidikanController = TextEditingController();
    TextEditingController noHpController = TextEditingController();
    TextEditingController alamatLengkapController = TextEditingController();

    List<Map<String, dynamic>> listAgama = [
      {"id": 1, "name": "Islam"},
      {"id": 2, "name": "Kristen"},
      {"id": 3, "name": "Hindu"},
      {"id": 4, "name": "Budha"},
    ];

    List<Map<String, dynamic>> listStatusPerkawinan = [
      {"id": 1, "name": "Menikah"},
      {"id": 2, "name": "Belum Menikah"},
      {"id": 3, "name": "Cerai"},
    ];

    List<Map<String, dynamic>> listProvinsi = [
      {"id": 1, "name": "Sulawesi Selatan"},
      {"id": 2, "name": "Sulawesi Barat"},
      {"id": 3, "name": "Sulawesi Tengah"},
    ];

    List<Map<String, dynamic>> listKota = [
      {"id": 1, "name": "Makassar"},
      {"id": 2, "name": "Mamuju"},
      {"id": 3, "name": "Palu"},
    ];

    List<Map<String, dynamic>> listKecamatan = [
      {"id": 1, "name": "Rappocini"},
      {"id": 2, "name": "Mamuju"},
      {"id": 3, "name": "Palu"},
    ];

    return Scaffold(
      backgroundColor: kWhiteColor,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Column(
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
                          "Langkah 1/2",
                          style: greyTextStyle.copyWith(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    FormInputTitle(
                        title: "Nama Lengkap - Sesuai KTP",
                        controller: namaController,
                        hintText: "Masukkan nama lengkap",
                        obscureText: false),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Jenis Kelamin",
                      style: greyTextStyle.copyWith(
                          fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Radio(
                            value: 0,
                            activeColor: Color(0xFF168039),
                            groupValue: groupJenisKelamin,
                            onChanged: (dynamic val) {
                              setSelectedRadio(val);
                            }),
                        Text(
                          "Pria",
                          style: blackTextStyle.copyWith(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          width: 96,
                        ),
                        Radio(
                            value: 1,
                            activeColor: Color(0xFF168039),
                            groupValue: groupJenisKelamin,
                            onChanged: (dynamic val) {
                              setSelectedRadio(val);
                            }),
                        Text(
                          "Wanita",
                          style: blackTextStyle.copyWith(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: FormInputTitle(
                                title: "Tempat Lahir",
                                controller: tempatLahirController,
                                hintText: "Tempat Lahir",
                                obscureText: false)),
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
                            child: FormInputTitle(
                                title: "Tanggal Lahir",
                                controller: tanggalLahirController,
                                hintText: "Tanggal Lahir",
                                obscureText: false)),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: FormInputTitle(
                                title: "Nama Ibu Kandung",
                                controller: namaIbuController,
                                hintText: "Nama ibu kandung",
                                obscureText: false)),
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
                            child: DropdownTitle(
                          itemAsString: (p0) => p0?["name"],
                          selectedItem: listAgama[0],
                          onChanged: (value) => print(value?["id"] ?? null),
                          title: "Agama",
                          listData: listAgama,
                          dropDownBuilder: (context, selectedItem) =>
                              Text(selectedItem["name"].toString()),
                        )),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    FormInputTitle(
                        title: "Pendidikan Terakhir",
                        controller: pendidikanController,
                        hintText: "Masukkan pendidikan terakhir",
                        obscureText: false),
                    const SizedBox(
                      height: 16,
                    ),
                    DropdownTitle(
                      itemAsString: (p0) => p0?["name"],
                      selectedItem: listStatusPerkawinan[0],
                      onChanged: (value) => print(value?["id"] ?? null),
                      title: "Status Perkawinan",
                      listData: listStatusPerkawinan,
                      dropDownBuilder: (context, selectedItem) =>
                          Text(selectedItem["name"].toString()),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    FormInputTitle(
                        title: "No HP",
                        controller: noHpController,
                        hintText: "Masukkan No HP",
                        obscureText: false),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Data Pribadi",
                      style: blackTextStyle.copyWith(
                          fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    DropdownTitle(
                      itemAsString: (p0) => p0?["name"],
                      selectedItem: listProvinsi[0],
                      onChanged: (value) => print(value?["id"] ?? null),
                      title: "Provinsi",
                      listData: listProvinsi,
                      dropDownBuilder: (context, selectedItem) =>
                          Text(selectedItem["name"].toString()),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    DropdownTitle(
                      itemAsString: (p0) => p0?["name"],
                      selectedItem: listKota[0],
                      onChanged: (value) => print(value?["id"] ?? null),
                      title: "Kabupaten/Kota",
                      listData: listProvinsi,
                      dropDownBuilder: (context, selectedItem) =>
                          Text(selectedItem["name"].toString()),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    DropdownTitle(
                      itemAsString: (p0) => p0?["name"],
                      selectedItem: listKecamatan[0],
                      onChanged: (value) => print(value?["id"] ?? null),
                      title: "Kecamatan",
                      listData: listKecamatan,
                      dropDownBuilder: (context, selectedItem) =>
                          Text(selectedItem["name"].toString()),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    FormInputTitle(
                        maxLines: 3,
                        title: "Alamat Lengkap",
                        controller: alamatLengkapController,
                        hintText: "Masukkan alamat lengkap",
                        obscureText: false),
                    const SizedBox(
                      height: 24,
                    ),
                    PrimaryButton(text: "Selanjutnya", onTap: () {}),
                    const SizedBox(
                      height: 24,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
