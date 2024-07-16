import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'Models/ProductsModel.dart';

class LastGetresponse extends StatefulWidget {
  const LastGetresponse({super.key});

  @override
  State<LastGetresponse> createState() => _LastGetresponseState();
}

class _LastGetresponseState extends State<LastGetresponse> {

  // jha p response obj se shuru ho
  Future<ProductsModel> getProductApi() async {
    final response = await http.get(Uri.parse('https://webhook.site/519f7506-d192-47d7-ab51-d93acb14d463'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      return ProductsModel.fromJson(data);
    } else {
      return ProductsModel.fromJson(data);
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
            child: FutureBuilder<ProductsModel>(
                future: getProductApi(),
                builder: (context,snapshot){
                  if (snapshot.hasData) {
                    return ListView.builder(
                        itemCount: snapshot.data!.data!.length,
                        itemBuilder: (context,index){
                          return Column(
                            children: [
                              Container(
                               height: MediaQuery.of(context).size.height * .3,
                               width: MediaQuery.of(context).size.width * 1,
                               child: ListView.builder(
                                   itemCount: snapshot.data!.data![index].images!.length,
                                   itemBuilder: (context, position){
                                 return Container(
                                   height: MediaQuery.of(context).size.height * .25,
                                   width: MediaQuery.of(context).size.width * .5,
                                   decoration: BoxDecoration(
                                     image: DecorationImage(
                                       image: NetworkImage(snapshot.data!.data![index].images![position].url.toString()),
                                     )
                                   ),
                                 );
                               }),
                             ),
                            ],
                          );

                        });
                  } else{
                   return const Center(child: CircularProgressIndicator());
                  }
                },
            ),
          ),

        ],
      ),
    );
  }
}

