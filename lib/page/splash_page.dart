import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quran_app/page/home/main_page.dart';
import 'package:quran_app/providers/user_provider.dart';
import 'package:quran_app/repository/database_instance.dart';
import 'package:quran_app/theme.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  @override
  void didChangeDependencies() {
    ref.watch(userRepoProvider).getUser();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 86,
            ),
            Text(
              'Quran App',
              style: whiteTextStyle.copyWith(fontSize: 28, fontWeight: bold),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Pelajari Quran dan\n Bacalah sekali setiap hari',
              textAlign: TextAlign.center,
              style: greyTextStyle.copyWith(fontSize: 18, fontWeight: regular),
            ),
            const SizedBox(
              height: 49,
            ),
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 450,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("$img/img_splash.png"),
                    ),
                  ),
                ),
                // Center(
                //   child: GestureDetector(
                //     onTap: () {
                //       Navigator.pushAndRemoveUntil(
                //           context,
                //           PageRouteBuilder(
                //             transitionDuration: const Duration(seconds: 1),
                //             transitionsBuilder: (context, animation,
                //                 secondaryAnimation, child) {
                //               const begin = Offset(1.0, 0.0);
                //               const end = Offset.zero;
                //               const curve = Curves.ease;

                //               var tween = Tween(begin: begin, end: end)
                //                   .chain(CurveTween(curve: curve));

                //               return SlideTransition(
                //                 position: animation.drive(tween),
                //                 child: child,
                //               );
                //             },
                //             pageBuilder:
                //                 (context, animation, secondaryAnimation) =>
                //                     const MainPage(),
                //           ),
                //           (route) => false);
                //     },
                //     child: Container(
                //       margin: const EdgeInsets.only(top: 413),
                //       padding: const EdgeInsets.symmetric(
                //           horizontal: 40, vertical: 16),
                //       decoration: BoxDecoration(
                //           color: orangeColor,
                //           borderRadius: BorderRadius.circular(30)),
                //       child: Text(
                //         'Get Started',
                //         style: blackTextStyle.copyWith(
                //           fontWeight: semiBold,
                //           fontSize: 18,
                //         ),
                //       ),
                //     ),
                //   ),
                // )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
