import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:quran_app/bloc/navigation/navigation_bloc.dart';
import 'package:quran_app/page/home/bookmark_page.dart';
import 'package:quran_app/page/home/empty_page.dart';
import 'package:quran_app/page/home/home_page.dart';
import 'package:quran_app/page/home/second_page.dart';
import 'package:quran_app/page/home/third_page.dart';
import 'package:quran_app/providers/provider.dart';
import 'package:quran_app/theme.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final indexBottomNavigation = ref.watch(indexBottomNavigationBar);

    Widget body() {
      switch (indexBottomNavigation) {
        case 0:
          return const HomePage();
        case 1:
          return const SecondPage();
        case 2:
          return const ThirdPage();
        case 3:
          return const EmptyPage();
        case 4:
          return const BookMarkPage();
        default:
          return const HomePage();
      }
    }

    return Scaffold(
      body: body(),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: indexBottomNavigation,
          backgroundColor: bottomBarColor,
          onTap: (value) => ref
              .read(indexBottomNavigationBar.notifier)
              .update((state) => value),
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              label: '',
              icon: Container(
                padding: EdgeInsets.zero,
                margin: const EdgeInsets.only(top: 6),
                child: Image.asset(
                  '$icons/icon_quran.png',
                  color: indexBottomNavigation == 0 ? purpleColor : whiteColor,
                  width: 32,
                  height: 32,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Container(
                padding: EdgeInsets.zero,
                margin: const EdgeInsets.only(top: 6),
                child: Image.asset(
                  '$icons/icon_idea.png',
                  width: 32,
                  height: 32,
                  color: indexBottomNavigation == 1 ? purpleColor : whiteColor,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Container(
                padding: EdgeInsets.zero,
                margin: const EdgeInsets.only(top: 6),
                child: Image.asset(
                  '$icons/icon_pray.png',
                  width: 32,
                  height: 32,
                  color: indexBottomNavigation == 2 ? purpleColor : whiteColor,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Container(
                padding: EdgeInsets.zero,
                margin: const EdgeInsets.only(top: 6),
                child: Image.asset(
                  '$icons/icon_pray2.png',
                  width: 32,
                  height: 32,
                  color: indexBottomNavigation == 3 ? purpleColor : whiteColor,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Container(
                padding: EdgeInsets.zero,
                margin: const EdgeInsets.only(top: 6),
                child: Image.asset(
                  '$icons/icon_bookmark.png',
                  width: 32,
                  height: 32,
                  color: indexBottomNavigation == 4 ? purpleColor : whiteColor,
                ),
              ),
            ),
          ]),
    );
  }
}
