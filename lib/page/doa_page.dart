import 'package:flutter/material.dart';
import 'package:quran_app/models/doa_model.dart';
import 'package:quran_app/page/detail_doa_page.dart';
import 'package:quran_app/theme.dart';

class DoaPage extends StatelessWidget {
  const DoaPage({super.key});

  @override
  Widget build(BuildContext context) {
    // DoaBloc doaBloc = context.read<DoaBloc>();
    return const SizedBox();
    // BlocBuilder<DoaBloc, DoaState>(
    //   bloc: doaBloc..add(GetDoaMethod()),
    //   builder: (context, state) {
    //     if (state is DoaLoading) {
    //       return Center(
    //         child: CircularProgressIndicator(
    //           color: purpleColor,
    //           strokeWidth: 10,
    //         ),
    //       );
    //     } else if (state is DoaSuccess) {
    //       return ListView.builder(
    //         padding: const EdgeInsets.only(left: 24, right: 24),
    //         itemCount: state.getDoa.length,
    //         itemBuilder: (context, index) {
    //           DoaModel doa = state.getDoa[index];
    //           return GestureDetector(
    //             onTap: () => Navigator.push(
    //                 context,
    //                 MaterialPageRoute(
    //                   builder: (context) => DetailDoaPage(
    //                     doa: doa,
    //                   ),
    //                 )),
    //             child: Container(
    //               decoration: BoxDecoration(
    //                   border: Border(
    //                       bottom: BorderSide(
    //                 color: greyColor.withOpacity(0.2),
    //               ))),
    //               child: ListTile(
    //                 contentPadding: EdgeInsets.zero,
    //                 leading: Container(
    //                   width: 36,
    //                   height: 36,
    //                   child: Center(
    //                     child: Text(
    //                       '${doa.id}',
    //                       style: whiteTextStyle,
    //                     ),
    //                   ),
    //                   decoration: const BoxDecoration(
    //                     image: DecorationImage(
    //                       image: AssetImage('$icons/icon_contentSurah.png'),
    //                     ),
    //                   ),
    //                 ),
    //                 title: Text(
    //                   '${doa.doa}',
    //                   style: whiteTextStyle.copyWith(
    //                     fontSize: 16,
    //                     fontWeight: medium,
    //                   ),
    //                 ),
    //               ),
    //             ),
    //           );
    //         },
    //       );
    //     }
    //     return Center(
    //         child: Text(
    //       'Gagal Memuat data',
    //       style: whiteTextStyle.copyWith(
    //         fontSize: 18,
    //         fontWeight: semiBold,
    //       ),
    //     ));
    //   },
    // );
  }
}
