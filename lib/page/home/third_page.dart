import 'package:flutter/material.dart';
import 'package:quran_app/theme.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Text(
          'Halaman third',
          style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
        ),
      ),
    );
  }
}
