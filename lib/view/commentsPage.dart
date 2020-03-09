import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:post_teste_bmg/model/comments_model.dart';
import 'package:post_teste_bmg/model/post_model.dart';

class CommentsPage extends StatelessWidget {
  Post posts;

  CommentsPage(Object posts) {
    this.posts = posts;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            iconTheme: IconThemeData(color: Colors.white),
            pinned: true,
            snap: true,
            floating: true,
            expandedHeight: 280,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(posts.person.name,
                  style: TextStyle(color: Colors.white)),
              background: Image.network(posts.imagePost, fit: BoxFit.fill),
            ),
          ),
          SliverFillRemaining(
            child: Container(
              child: Wrap(
                spacing: 20.0,
                runSpacing: 20.0,
                direction: Axis.horizontal,
                children: <Widget>[
                  Column(
                    children: posts.comment.map((Comments comments) =>
                        Column(
                          children: <Widget>[
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 10,
                                ),
                                CircleAvatar(
                                  backgroundImage: NetworkImage(comments.person.profilePhotoUri),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      comments.person.name,
                                      style: TextStyle(
                                        color: Colors.orange[200],
                                        fontSize: 10
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      comments.text,
                                      style: TextStyle(
                                          color: Colors.orange
                                      ),
                                    ),
                                  ],
                                ),

                              ],
                            ),
                            Divider(
                              indent: 10,
                              endIndent: 10,
                              color: Colors.orange,
                            ),
                          ],
                        ),
                    ).toList(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
