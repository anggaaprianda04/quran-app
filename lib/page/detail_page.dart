import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quran_app/models/surah_model.dart';
import 'package:quran_app/providers/quran_provider.dart';
import 'package:quran_app/theme.dart';
import 'package:quran_app/widget/card_surah.dart';

class DetailPage extends ConsumerWidget {
  final int id;
  const DetailPage({required this.id, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<SurahModel> getDetailSurah = ref.watch(detailSurah(id));
    return Scaffold(
      backgroundColor: primaryColor,
      body: getDetailSurah.when(
        data: (data) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 45),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
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
                    Text(
                      '${data.name!.transliteration!.id}',
                      style: whiteTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: bold,
                      ),
                    ),
                    const Spacer(),
                    // InkWell(
                    //   onTap: () {},
                    //   child: Image.asset('$icons/icon_search.png',
                    //       width: 24, color: greyColor),
                    // )
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 257,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: AssetImage('$img/img_card.png'),
                              fit: BoxFit.cover)),
                    ),
                    Column(
                      children: [
                        const SizedBox(
                          height: 24,
                        ),
                        Text(
                          '${data.name!.transliteration!.id}',
                          style: whiteTextStyle.copyWith(
                              fontWeight: medium, fontSize: 26),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          '${data.name!.translation!.id}',
                          style: whiteTextStyle.copyWith(
                              fontSize: 16, fontWeight: medium),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 64, vertical: 16),
                          child: Divider(
                            color: whiteColor,
                          ),
                        ),
                        Text(
                          '${data.revelation!.id} • ${data.numberOfVerses} Ayat',
                          style: whiteTextStyle.copyWith(fontWeight: medium),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Image.asset(
                          '$img/img_bismillah.png',
                          width: 240,
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Column(
                  children: data.verses!
                      .map((e) => CardSurah(
                            ayahModel: e,
                          ))
                      .toList(),
                )
              ],
            ),
          ),
        ),
        error: (error, stackTrace) => Text(
          error.toString(),
        ),
        loading: () => Center(
          child: CircularProgressIndicator(
            color: purpleColor,
            strokeWidth: 10,
          ),
        ),
      ),
    );

    // Scaffold(backgroundColor: primaryColor, body: const SizedBox()
    //  BlocBuilder<AyatBloc, AyatState>(
    //   bloc: quranBloc..add(GetDetailSurah(surah.number!.toInt())),
    //   builder: (context, state) {
    //     if (state is AyatLoading) {
    //       return Center(
    //         child: CircularProgressIndicator(
    //           color: purpleColor,
    //           strokeWidth: 10,
    //         ),
    //       );
    //     } else if (state is AyatSuccess) {
    //       return
    // ListView.builder(
    //         primary: false,
    //         shrinkWrap: true,
    //         itemCount: state.detailSurah.number,
    //         padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 45),
    //         itemBuilder: (context, index) {
    //           return Column(
    //             children: [
    //               Row(
    //                 children: [
    //                   GestureDetector(
    //                     onTap: () => Navigator.pop(context),
    //                     child: Icon(
    //                       Icons.arrow_back_ios,
    //                       size: 24,
    //                       color: greyColor,
    //                     ),
    //                   ),
    //                   const SizedBox(
    //                     width: 24,
    //                   ),
    //                   Text(
    //                     '${surah.name!.transliteration!.id}',
    //                     style: whiteTextStyle.copyWith(
    //                       fontSize: 20,
    //                       fontWeight: bold,
    //                     ),
    //                   ),
    //                   const Spacer(),
    //                   InkWell(
    //                     onTap: () {},
    //                     child: Image.asset('$icons/icon_search.png',
    //                         width: 24, color: greyColor),
    //                   )
    //                 ],
    //               ),
    //               const SizedBox(
    //                 height: 24,
    //               ),
    //               Stack(
    //                 children: [
    //                   Container(
    //                     width: double.infinity,
    //                     height: 257,
    //                     decoration: BoxDecoration(
    //                         borderRadius: BorderRadius.circular(20),
    //                         image: const DecorationImage(
    //                             image: AssetImage('$img/img_card.png'),
    //                             fit: BoxFit.cover)),
    //                   ),
    //                   Column(
    //                     children: [
    //                       const SizedBox(
    //                         height: 24,
    //                       ),
    //                       Text(
    //                         '${surah.name!.transliteration!.id}',
    //                         style: whiteTextStyle.copyWith(
    //                             fontWeight: medium, fontSize: 26),
    //                       ),
    //                       const SizedBox(
    //                         height: 6,
    //                       ),
    //                       Text(
    //                         '${surah.name!.translation!.id}',
    //                         style: whiteTextStyle.copyWith(
    //                             fontSize: 16, fontWeight: medium),
    //                       ),
    //                       Padding(
    //                         padding: const EdgeInsets.symmetric(
    //                             horizontal: 64, vertical: 16),
    //                         child: Divider(
    //                           color: whiteColor,
    //                         ),
    //                       ),
    //                       Text(
    //                         '${surah.revelation!.id} • ${surah.numberOfVerses} Ayat',
    //                         style:
    //                             whiteTextStyle.copyWith(fontWeight: medium),
    //                       ),
    //                       const SizedBox(
    //                         height: 18,
    //                       ),
    //                       Image.asset(
    //                         '$img/img_bismillah.png',
    //                         width: 240,
    //                       )
    //                     ],
    //                   )
    //                 ],
    //               ),
    //               const SizedBox(
    //                 height: 40,
    //               ),
    //               Column(
    //                 children: state.detailSurah.verses!
    //                     .map((e) => CardSurah(
    //                           ayahModel: e,
    //                         ))
    //                     .toList(),
    //               )
    //             ],
    //           );
    //         },
    //       );
    //     } else if (state is AyatFailed) {
    //       return Center(
    //           child: Text(
    //         '${state.message}',
    //         style: whiteTextStyle.copyWith(
    //           fontSize: 18,
    //           fontWeight: semiBold,
    //         ),
    //       ));
    //     }
    //     return Container();
    //   },
    // ),
    // );
  }
}
