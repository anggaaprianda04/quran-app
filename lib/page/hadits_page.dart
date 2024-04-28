import 'package:flutter/material.dart';
import 'package:quran_app/models/hadits_model.dart';
import 'package:quran_app/page/detail_hadits_page.dart';
import 'package:quran_app/theme.dart';

class HaditsPage extends StatelessWidget {
  const HaditsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // HaditsBloc haditsBloc = context.read<HaditsBloc>();

    return SizedBox();
    // BlocBuilder<HaditsBloc, HaditsState>(
    //   bloc: haditsBloc..add(GetHaditsMethod()),
    //   builder: (context, state) {
    //     if (state is HaditsLoading) {
    //       return Center(
    //         child: CircularProgressIndicator(
    //           color: purpleColor,
    //           strokeWidth: 10,
    //         ),
    //       );
    //     }
    //     if (state is HaditsSuccess) {
    //       return ListView.builder(
    //         padding: const EdgeInsets.only(left: 24, right: 24),
    //         itemCount: state.listHadist.length,
    //         itemBuilder: (context, index) {
    //           HaditsModel hadits = state.listHadist[index];
    //           return GestureDetector(
    //             onTap: () => Navigator.push(
    //                 context,
    //                 MaterialPageRoute(
    //                   builder: (context) =>
    //                       DetailHaditsPage(haditsModel: hadits),
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
    //                       '${index + 1}',
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
    //                   '${hadits.name}',
    //                   style: whiteTextStyle.copyWith(
    //                     fontSize: 16,
    //                     fontWeight: medium,
    //                   ),
    //                 ),
    //                 subtitle: Text(
    //                   '${hadits.id}',
    //                   style: greyTextStyle.copyWith(
    //                       fontSize: 12, fontWeight: medium),
    //                 ),
    //               ),
    //             ),
    //           );
    //         },
    //       );
    //     }
    //     if (state is HaditsFailed) {
    //       return Center(
    //         child: Text(
    //           '${state.e}',
    //           style:
    //               whiteTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
    //         ),
    //       );
    //     }
    //     return Container();
    //   },
    // );
  }
}
