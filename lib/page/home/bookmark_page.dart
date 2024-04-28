import 'package:flutter/material.dart';
import 'package:quran_app/theme.dart';
import 'package:quran_app/widget/item_bookmark.dart';

class BookMarkPage extends StatelessWidget {
  const BookMarkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(
              height: 45,
            ),
            Row(
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
                  'Bookmark',
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
            const SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Icon(
                  Icons.create_new_folder_outlined,
                  size: 24,
                  color: purpleColor,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  'Tambah Koleksi Baru',
                  style: whiteTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 16,
                  ),
                ),
                const Spacer(),
                Icon(
                  Icons.sort,
                  size: 24,
                  color: whiteColor,
                )
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            const ItemBookMark(
              title: 'Favorit Saya',
              totalItems: '8',
            ),
            const ItemBookMark(
              title: 'Daily',
              totalItems: '5',
            ),
          ],
        ),
      ),
    );
  }
}
