import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quran_app/repository/database_instance.dart';

final userRepoProvider = Provider(
  (ref) => DatabaseInstance(),
);

final getUser = FutureProvider((ref) async {
  var result = await ref.watch(userRepoProvider).getUser();
  return result;
});
