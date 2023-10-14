import 'package:assignment/model.dart';
import 'package:dio/dio.dart';

class DogsService {
  Stream<List<Dogs>> getData() async* {
    var dio = Dio();
    var url = 'https://dog.ceo/api/breeds/image/random';
    List<Dogs> dogsList = [];

    // while (true) {
    //   var res = await dio.get(url);
    //   var dog = Dogs.fromMap(res.data);
    //   dogsList.add(dog);

    //   if (dogsList.length == 30) {
    //     break;
    //   }
    //   yield dogsList;
    // }
    for (var i = 0; i < 100; i++) {
      var res = await dio.get(url);
      var dog = Dogs.fromMap(res.data);
      dogsList.add(dog);
      yield dogsList;
    }
  }
}
