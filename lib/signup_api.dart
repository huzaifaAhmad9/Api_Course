
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class SignupApi extends StatefulWidget {
  const SignupApi({super.key});

  @override
  State<SignupApi> createState() => _SignupApiState();
}

class _SignupApiState extends State<SignupApi> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();

  void login(String email, String password) async {
    try{
      Response response = await post(
        Uri.parse('https://reqres.in/api/register'),
        body: {
          'email': email,
          'password': password
        }
      );
      if(response.statusCode == 200){
        // to show data in API
      /*  var data = jsonDecode(response.body.toString());
        print(data['token']);*/
        print('Account Created Successfully!!');
      }else{
        print('Failed ......');
      }
    }catch(e){
      print(e.toString());
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan.withOpacity(.4),
        title: const Text('Sign-Up API Integration'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailcontroller,
              decoration: InputDecoration(
                hintText: 'Email'
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              controller: passcontroller,
              decoration: InputDecoration(
                  hintText: 'Password'
              ),
            ),
            SizedBox(height: 40,),
            GestureDetector(
              onTap: (){
                login(emailcontroller.text.toString(), passcontroller.text.toString());
              },
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text('Sign UP'),),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
