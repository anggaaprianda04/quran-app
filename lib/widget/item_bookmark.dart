import 'package:flutter/material.dart';
import 'package:quran_app/theme.dart';

class ItemBookMark extends StatelessWidget {
  final String title;
  final String totalItems;
  const ItemBookMark(
      {required this.title, required this.totalItems, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      width: double.infinity,
      height: 46,
      child: Row(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Icon(
              Icons.folder_open_outlined,
              color: purpleColor,
              size: 24,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$title',
                style:
                    whiteTextStyle.copyWith(fontSize: 16, fontWeight: medium),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                '$totalItems Item',
                style: greyTextStyle.copyWith(fontSize: 12, fontWeight: medium),
              )
            ],
          ),
          const Spacer(),
          Icon(
            Icons.more_vert_outlined,
            size: 24,
            color: whiteColor,
          )
        ],
      ),
    );
  }
}
