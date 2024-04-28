import 'package:dio/dio.dart';
import 'package:quran_app/models/doa_model.dart';

class ServiceDoa {
  var dio = Dio();

  Future<List<DoaModel>> getDoa() async {
    try {
      var response =
          await dio.get("https://doa-doa-api-ahmadramadhan.fly.dev/api",
              options: Options(
                followRedirects: true,
                validateStatus: (status) => true,
              ));
      if (response.statusCode == 200) {
        List data = response.data.cast<Map<String, dynamic>>();
        List<DoaModel> listDoa = data.map((e) => DoaModel.fromJson(e)).toList();
        return listDoa;
      } else {
        return [];
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
