import 'package:dio/dio.dart';
import 'package:quran_app/models/hadits_model.dart';

class ServiceHadits {
  var dio = Dio();

  Future<List<HaditsModel>> getHadits() async {
    try {
      var response = await dio.get("https://api.hadith.gading.dev/books",
          options: Options(
            followRedirects: true,
            validateStatus: (status) => true,
          ));
      if (response.statusCode == 200) {
        List data = response.data["data"] ?? [];
        List<HaditsModel> hadits =
            data.map((hadits) => HaditsModel.fromJson(hadits)).toList();
        return hadits;
      } else {
        return response.data["message"];
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<HaditsModel> getHadithsByName(String nameId) async {
    try {
      var response = await dio.get(
          'https://api.hadith.gading.dev/books/$nameId?range=1-20',
          options: Options(
            followRedirects: true,
            validateStatus: (status) => true,
          ));
      if (response.statusCode == 200) {
        var data = response.data;
        return HaditsModel.fromJson(data["data"]);
      } else {
        return response.data["message"];
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
