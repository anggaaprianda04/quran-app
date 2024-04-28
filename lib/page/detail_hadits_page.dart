import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:quran_app/bloc/hadits/hadits_bloc.dart';
import 'package:quran_app/models/hadits_model.dart';
import 'package:quran_app/theme.dart';
import 'package:quran_app/widget/card_hadits.dart';

class DetailHaditsPage extends StatelessWidget {
  final HaditsModel haditsModel;
  const DetailHaditsPage({required this.haditsModel, super.key});

  @override
  Widget build(BuildContext context) {
    // HaditsBloc haditsBloc = context.read<HaditsBloc>();
    return Scaffold(
      backgroundColor: primaryColor,
      body: const SizedBox(),
      // BlocBuilder<HaditsBloc, HaditsState>(
      //   bloc: haditsBloc..add(GetDetailHaditsMethod(haditsModel.id.toString())),
      //   builder: (context, state) {
      //     if (state is DetailHadithsLoaded) {
      //       return ListView(
      //         padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 45),
      //         children: [
      //           Row(
      //             children: [
      //               GestureDetector(
      //                 onTap: () => Navigator.pop(context),
      //                 child: Icon(
      //                   Icons.arrow_back_ios,
      //                   size: 24,
      //                   color: greyColor,
      //                 ),
      //               ),
      //               const SizedBox(
      //                 width: 24,
      //               ),
      //               Text(
      //                 '${haditsModel.name}',
      //                 style: whiteTextStyle.copyWith(
      //                   fontSize: 20,
      //                   fontWeight: bold,
      //                 ),
      //               ),
      //             ],
      //           ),
      //           const SizedBox(
      //             height: 24,
      //           ),
      //           Column(
      //             children: [
      //               const SizedBox(
      //                 height: 24,
      //               ),
      //               Text(
      //                 '${haditsModel.name}',
      //                 style: whiteTextStyle.copyWith(
      //                     fontWeight: medium, fontSize: 26),
      //               ),
      //               const SizedBox(
      //                 height: 12,
      //               ),
      //               Text(
      //                 '${haditsModel.id}',
      //                 style: whiteTextStyle.copyWith(
      //                     fontWeight: medium, fontSize: 18),
      //               ),
      //               Padding(
      //                 padding: const EdgeInsets.symmetric(
      //                     horizontal: 64, vertical: 2),
      //                 child: Divider(
      //                   color: whiteColor,
      //                 ),
      //               ),
      //             ],
      //           ),
      //           const SizedBox(
      //             height: 40,
      //           ),
      //           Column(
      //             children: state.getHadits.hadiths!
      //                 .map((e) => CardHadits(
      //                       detailHadits: e,
      //                     ))
      //                 .toList(),
      //           )
      //         ],
      //       );
      //     } else if (state is HaditsFailed) {
      //       return Center(
      //           child: Text(
      //         '${state.e}',
      //         style: whiteTextStyle.copyWith(
      //           fontSize: 18,
      //           fontWeight: semiBold,
      //         ),
      //       ));
      //     }
      //     return Center(
      //       child: CircularProgressIndicator(
      //         color: purpleColor,
      //         strokeWidth: 10,
      //       ),
      //     );
      //   },
      // ),
    );
  }
}
