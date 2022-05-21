import 'package:flutter/material.dart';
import 'package:repair_home/src/shared/constants.dart';
import 'package:repair_home/src/shared/widgets.dart';

class Cart extends StatefulWidget {
  static var cartTilesList;
  static var cartSubTilesList;

  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  final List cartTilesList = [
    const CartTiles(
        name: 'Microwave', icon: 'microwave', service: '2', price: 102),
    const CartTiles(name: 'Fridge', icon: 'fridge', service: '2', price: 70),
    const CartTiles(name: 'Washer', icon: 'washer', service: '1', price: 135),
    const CartTiles(
        name: 'Computer', icon: 'computer', service: '1', price: 30),
  ];

  final List cartSubTilesList = [
    const CartSubTiles(
      name: 'Set up Microwave',
      price: 22,
    ),
    const CartSubTiles(
      name: ' Repair Microwave',
      price: 80,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundMain,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
          iconSize: 16.0,
          color: bBlack,
          hoverColor: Colors.transparent,
        ),
        elevation: 0.0,
        title: const Text(
          'Cart',
          style: TextStyle(
            color: bBlack,
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.75,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return CartTiles(
                        name: cartTilesList[index].name,
                        icon: cartTilesList[index].icon,
                        service: cartTilesList[index].service,
                        price: cartTilesList[index].price);
                  },
                  itemCount: cartTilesList.length,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Expanded(
                          flex: 3,
                          child: Text(
                            'Total price',
                            style: TextStyle(color: text2),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text('\$302',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(10.0),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: bBlack,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: const Text(
                              'Make an order',
                              style: TextStyle(color: text1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        // Container(
        //   padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        //   // color: Colors.pink.shade300,
        // ),
      ),
    );
  }
}
