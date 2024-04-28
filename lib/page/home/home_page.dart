import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran_app/page/doa_page.dart';
import 'package:quran_app/page/hadits_page.dart';
import 'package:quran_app/page/surah_page.dart';
import 'package:quran_app/theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    int currentIndex = 0;

    return DefaultTabController(
      length: 4,
      initialIndex: currentIndex,
      child: Scaffold(
        backgroundColor: primaryColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 45,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Image.asset('$icons/icon_menu.png',
                        width: 24, color: greyColor),
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  Text(
                    'Quran App',
                    style: whiteTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: bold,
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Image.asset('$icons/icon_search.png',
                        width: 24, color: greyColor),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Assalamualaikum',
                    style: greyTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Angga Aprianda',
                    style: whiteTextStyle.copyWith(
                        fontSize: 24, fontWeight: semiBold),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Stack(children: [
                Container(
                  width: double.infinity,
                  height: 131,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage("$img/img_read.png"),
                          fit: BoxFit.cover)),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 19, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            '$icons/icon_read.png',
                            width: 20,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Terakhir Baca',
                            style: whiteTextStyle.copyWith(fontWeight: medium),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Al-Baqarah',
                        style: whiteTextStyle.copyWith(
                            fontSize: 18, fontWeight: semiBold),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Ayat No: 150',
                        style: whiteTextStyle,
                      )
                    ],
                  ),
                )
              ]),
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: TabBar(
                  indicatorWeight: 4.0,
                  indicatorColor: purpleColor,
                  labelColor: whiteColor,
                  tabs: [
                    Tab(
                      child: Text(
                        'Surat',
                        style: GoogleFonts.poppins(
                          fontWeight: semiBold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Hadits',
                        style: GoogleFonts.poppins(
                          fontWeight: semiBold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Doa',
                        style: GoogleFonts.poppins(
                          fontWeight: semiBold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Tafsir',
                        style: GoogleFonts.poppins(
                          fontWeight: semiBold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ]),
            ),
            Expanded(
              child: TabBarView(children: [
                const SurahPage(),
                const HaditsPage(),
                const DoaPage(),
                Center(
                  child: Text(
                    'Coming Soon',
                    style: whiteTextStyle.copyWith(
                        fontSize: 18, fontWeight: semiBold),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
