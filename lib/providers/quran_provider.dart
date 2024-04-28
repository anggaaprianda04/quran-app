import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quran_app/models/surah_model.dart';
import 'package:quran_app/repository/service_quran.dart';

final quranRepoProvider = Provider(
  (ref) => RepositoryQuran(),
);

final listSurahQuran = FutureProvider<List<SurahModel>>((ref) async {
  var listSurah = await ref.watch(quranRepoProvider).getSurah();
  return listSurah;
});

final detailSurah =
    FutureProvider.autoDispose.family<SurahModel, int>((ref, arg) async {
  return await ref.read(quranRepoProvider).getSurahById(id: arg);
});
