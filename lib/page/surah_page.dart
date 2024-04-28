import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quran_app/models/surah_model.dart';
import 'package:quran_app/page/detail_page.dart';
import 'package:quran_app/providers/quran_provider.dart';
import 'package:quran_app/theme.dart';

class SurahPage extends ConsumerWidget {
  const SurahPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<SurahModel>> getListSurah = ref.watch(listSurahQuran);

    return getListSurah.when(
      data: (data) => ListView.builder(
        padding: const EdgeInsets.only(left: 24, right: 24),
        itemCount: data.length,
        itemBuilder: (context, index) {
          final SurahModel surah = data[index];
          return GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    id: surah.number!.toInt(),
                  ),
                )),
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                color: greyColor.withOpacity(0.2),
              ))),
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Container(
                  width: 36,
                  height: 36,
                  child: Center(
                    child: Text(
                      '${surah.number}',
                      style: whiteTextStyle,
                    ),
                  ),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('$icons/icon_contentSurah.png'),
                    ),
                  ),
                ),
                title: Text(
                  '${surah.name!.transliteration!.id}',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                subtitle: Text(
                  '${surah.revelation!.id} • ${surah.numberOfVerses} Ayat',
                  style:
                      greyTextStyle.copyWith(fontSize: 12, fontWeight: medium),
                ),
                trailing: Text(
                  '${surah.name!.short}',
                  style: whiteTextStyle.copyWith(
                      fontSize: 20, fontWeight: bold, color: purpleColor),
                ),
              ),
            ),
          );
        },
      ),
      error: (error, stackTrace) => Text(error.toString()),
      loading: () => Center(
        child: CircularProgressIndicator(
          color: purpleColor,
          strokeWidth: 10,
        ),
      ),
    );
  }
}
