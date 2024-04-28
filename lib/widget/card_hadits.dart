import 'package:flutter/material.dart';
import 'package:quran_app/models/hadits_model.dart';
import 'package:quran_app/theme.dart';

class CardHadits extends StatelessWidget {
  final DetailHadits detailHadits;
  const CardHadits({required this.detailHadits, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: greyColor.withOpacity(0.2),
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
            height: 47,
            decoration: BoxDecoration(
              color: bottomBarColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Container(
                  width: 27,
                  height: 27,
                  decoration: BoxDecoration(
                    color: purpleColor,
                    borderRadius: BorderRadius.circular(13.5),
                  ),
                  child: Center(
                    child: Text(
                      '${detailHadits.number}',
                      style: whiteTextStyle.copyWith(fontWeight: medium),
                    ),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.share_outlined,
                    size: 24,
                    color: purpleColor,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.bookmark_border,
                    size: 24,
                    color: purpleColor,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          SizedBox(
            width: double.infinity,
            child: Text(
              '${detailHadits.arab}',
              style: whiteTextStyle.copyWith(fontSize: 26),
              textAlign: TextAlign.end,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            width: double.infinity,
            child: Text(
              '${detailHadits.id}',
              style: whiteTextStyle.copyWith(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
