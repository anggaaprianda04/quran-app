import 'package:dio/dio.dart';
import 'package:quran_app/models/surah_model.dart';

class RepositoryQuran {
  final Dio? _dio;
  final String apiUrl = 'https://api.quran.gading.dev';
  final CancelToken? _cancelToken;

  RepositoryQuran({Dio? dio, CancelToken? cancelToken})
      : _dio = dio,
        _cancelToken = cancelToken;

  Future<List<SurahModel>> getSurah() async {
    try {
      var response =
          await (_dio ?? Dio()).get("https://api.quran.gading.dev/surah",
              options: Options(
                followRedirects: true,
                validateStatus: (status) => true,
              ));
      // print(response.data["data"]);
      // return [];
      if (response.statusCode == 200) {
        return (response.data['data'] as List)
            .map((surah) => SurahModel.fromJson(surah))
            .toList();
      } else {
        throw "Data not Found";
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<SurahModel> getSurahById({required int id}) async {
    try {
      var response =
          await (_dio ?? Dio()).get("https://api.quran.gading.dev/surah/$id",
              options: Options(
                followRedirects: true,
                validateStatus: (status) => true,
              ));
      // print("masuk ${response.data["data"]["verses"]}");
      if (response.statusCode == 200) {
        return SurahModel.fromJson(response.data["data"]);
      } else {
        return response.data["message"];
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
