import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

import 'Models/postsModel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {



  // jha p array ho or uska nam na ho postman k response me
  List<PostsModel> postList = [];
  Future<List<PostsModel>> getPostApi() async{
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var data = jsonDecode(response.body.toString());
    if(response.statusCode == 200){
      postList.clear();
      for(Map i in data){
        postList.add(PostsModel.fromJson(i));
      }
      return postList;
    }else{
      return postList;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan.withOpacity(.4),
        title: const Text('API Integration'),
      ),
      body: Column(
        children: [
         Expanded(
           child: FutureBuilder(
               future: getPostApi(),
               builder: (context, AsyncSnapshot<List<PostsModel>>snapshot){ // also use only snapshot instead of Asyncsnapshot
                 if (!snapshot.hasData) {
                   return const Center(child: CircularProgressIndicator());
                 } else{
                   return ListView.builder(
                     itemCount: postList.length,
                       itemBuilder: (context,index){
                       return Card(
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text('Title' , style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                               Text(postList[index].title.toString()),
                               Text('Description' , style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                               Text(postList[index].body.toString()),
                             ],
                           ),
                         ),
                       );
                       }
                   );
                 }
               }
           ),
         )
        ],
      ),
    );
  }
}
