import 'package:flutter/material.dart';
import 'package:vestanesia/shared/theme.dart';
import 'package:dropdown_search/dropdown_search.dart';

class DropdownTitle extends StatelessWidget {
  final String title;
  final List<Map<String, dynamic>> listData;
  final Widget Function(BuildContext, dynamic) dropDownBuilder;
  final void Function(Map<String, dynamic>?) onChanged;
  final String Function(Map<String, dynamic>?) itemAsString;
  final Map<String, dynamic> selectedItem;

  const DropdownTitle({
    Key? key,
    required this.title,
    required this.listData,
    required this.dropDownBuilder,
    required this.onChanged,
    required this.selectedItem,
    required this.itemAsString,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style:
              greyTextStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          height: 4,
        ),
        DropdownSearch<Map<String, dynamic>>(
            itemAsString: itemAsString,
            onChanged: onChanged,
            selectedItem: selectedItem,
            dropdownBuilder: dropDownBuilder,
            items: listData,
            dropdownButtonProps: DropdownButtonProps(
                constraints: const BoxConstraints(maxHeight: 40, minHeight: 40),
                visualDensity: VisualDensity.comfortable,
                icon: Image.asset(
                  "assets/icon_arrow_down.png",
                  height: 24,
                  width: 24,
                )),
            dropdownDecoratorProps: DropDownDecoratorProps(
                dropdownSearchDecoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8))))),
      ],
    );
  }
}
