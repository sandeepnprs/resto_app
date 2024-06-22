import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'menupage.dart';


class CartScreens extends StatelessWidget {
  const CartScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: 6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Menu",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SmallButton(text: "Back")
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.23,
                        child: ListView.builder(
                          shrinkWrap: true,
                          controller: ScrollController(
                            keepScrollOffset: false,
                          ),
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return FoodCard();
                          },
                        ),
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.orangeAccent,
                    width: 1,
                    margin: EdgeInsets.symmetric(horizontal: 12),
                    height: MediaQuery.of(context).size.height,
                  ),
                  SizedBox(width: 16),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Non Veg Pizza",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: ListView.builder(
                          shrinkWrap: true,
                          controller: ScrollController(
                            keepScrollOffset: false,
                          ),
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return ProductDetailTile();
                          },
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: MediaQuery.of(context).size.height * 0.17,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "MY ORDER",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    SmallButton(text: "Edit"),
                    SizedBox(width: 10),
                    SmallButton(text: "View My Order"),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Tax: \$5.00",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  color: Colors.black,
                  width: 2,
                  height: 18,
                ),
                Text(
                  "Total: \$5.00",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  color: Colors.black,
                  width: 2,
                  height: 18,
                ),
                const Text(
                  "Item: 5",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BigButton(
                  text: "Cancel",
                  color: Colors.red,
                ),
                BigButton(
                  text: "Order Now",
                  color: Colors.green,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
