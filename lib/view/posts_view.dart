import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:post_teste_bmg/model/post_model.dart';
import 'package:post_teste_bmg/service/service_post_http.dart';
import 'package:post_teste_bmg/view/commentsPage.dart';

class PostsPage extends StatelessWidget {
  final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMG feeds',
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
      body: FutureBuilder(
        future: httpService.getPosts(),
        builder: (BuildContext context, AsyncSnapshot<List<Post>> snapshot){
          if(snapshot.hasData){
            List<Post> postList = snapshot.data;
            return ListView(
              children:<Widget> [
                Column(
                  children: postList.map((Post post) =>
                        GestureDetector(
                            child: Column(
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
                                      backgroundImage: NetworkImage(post.person.profilePhotoUri),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      post.person.name,
                                      style: TextStyle(
                                        color: Colors.orange
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                 Image.network(post.imagePost),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[

                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Icon(
                                          Icons.favorite,
                                          color: Colors.orange,
                                        ),
                                        Text(
                                            post.likes.toString(),
                                            style: TextStyle(
                                                color: Colors.orange
                                            ),
                                        ),
                                      ],
                                    ),

                                    SizedBox(
                                      width: 20,
                                    ),

                                    Column(
                                      children: <Widget>[
                                        Icon(
                                          Icons.chat,
                                          color: Colors.orange,
                                        ),
                                        Text(
                                          post.comment.length.toString(),
                                          style: TextStyle(
                                              color: Colors.orange
                                          ),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),
                                Divider(
                                  endIndent: 10,
                                  indent: 10,
                                  color: Colors.orange[200],
                                ),
                              ],
                            ),
                          onTap: ()=>{
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder:
                                      (context) => CommentsPage(post),
                                ),
                            ),
                          },
                        ),
                    ).toList(),

                ),

              ],


            );
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}





