

import 'package:post_teste_bmg/model/comments_model.dart';
import 'package:post_teste_bmg/model/person_model.dart';

class Post{
  final String photoUser;
  final String imagePost;
  final int likes;
  final Person person;
  final List<Comments> comment;


  Post({
    this.photoUser,
    this.imagePost,
    this.likes,
    this.person,
    this.comment,
  });

  factory Post.fromJson(Map<String, dynamic> json){

    var list = json['comments'] as List;
    List<Comments> commentsList = list.map((e) => Comments.fromJson(e)).toList();

    return Post(
      photoUser: json['profilePhotoUri'],
      imagePost: json['photoUri'],
      likes: json['likes'],
      person: Person.fromJson(json['person']),
      comment: commentsList,
    );
  }
}
