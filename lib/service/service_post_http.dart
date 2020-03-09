import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:post_teste_bmg/model/post_model.dart';
import 'package:post_teste_bmg/model/person_model.dart';

class HttpService {
  final String url = "https://mobile.int.granito.xyz/api/feed/getposts";

  Future<List<Post>> getPosts() async {
    print('httpPost');
    Response response = await get(url);

    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);
      List<Post> posts =
          body.map((dynamic item) => Post.fromJson(item)).toList();
      return posts;
    } else {
      print('httpPost3');
      throw 'Posts não encontrado';
    }
  }
}
