import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  CartScreens(),
    );
  }
}


class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List <dynamic> users = [];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("Menu")),
      body:

      ListView.builder(
         itemCount: users.length,
         itemBuilder: (context,index){
       final  user = users[index];
       final   product_name = user['store_category_id'];
       return ListTile(
         title: Text(product_name),
       );
     }),
     floatingActionButton: FloatingActionButton(
       backgroundColor: Colors.red,
       onPressed: fetchUsers,),
   );
  }
  void fetchUsers()async{
    print("fetchUser Called");
    const  url = 'https://staging.app2food.com/v30/api/store/menu?store_id=11002';
    final uri = Uri.parse(url);
      final response = await  http.get(uri);
      final  body = response.body;
      print(body);
      final json = jsonDecode(body);
      print(json['data']['category']);
      setState(() {
         users = json['data']['product'];
      });
  }
}
