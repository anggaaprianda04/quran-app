import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quran_app/models/doa_model.dart';
import 'package:quran_app/theme.dart';

class DetailDoaPage extends StatelessWidget {
  final DoaModel doa;
  const DetailDoaPage({required this.doa, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 45),
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 24,
                  color: greyColor,
                ),
              ),
              const SizedBox(
                width: 24,
              ),
              // Text(
              //   '${surah.namaLatin}',
              //   style: whiteTextStyle.copyWith(
              //     fontSize: 20,
              //     fontWeight: bold,
              //   ),
              // ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            '${doa.doa}',
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 26,
          ),
          SizedBox(
            width: double.infinity,
            child: Text(
              '${doa.ayat}',
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
              '~ ${doa.latin}',
              style: greyTextStyle.copyWith(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          SizedBox(
            width: double.infinity,
            child: Text(
              '${doa.arti}',
              style: whiteTextStyle.copyWith(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
