

import 'package:post_teste_bmg/model/person_model.dart';

class Comments{
  final int commentId;
  final int postId;
  final int personId;
  final Person person;
  final String text;

  Comments({
    this.commentId,
    this.postId,
    this.personId,
    this.person,
    this.text,
  });


  factory Comments.fromJson(Map<String, dynamic> json){



    return Comments(
      personId: json['personId'],
      postId: json['postId'],
      commentId: json['commentId'],
      text: json['text'],
      person: Person.fromJson(json['person']),

    );
  }

}