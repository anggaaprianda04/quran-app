import 'package:flutter/material.dart';
import 'package:quran_app/theme.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Text(
          'Halaman second',
          style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
        ),
      ),
    );
  }
}
