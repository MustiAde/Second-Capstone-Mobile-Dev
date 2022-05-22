import 'package:flutter/material.dart';
import 'package:repair_home/src/screens/home/cart_screen.dart';
import 'package:repair_home/src/screens/home/fix_microwave.dart';
import 'package:repair_home/src/shared/constants.dart';

class CartTiles extends StatelessWidget {
  const CartTiles({
    Key? key,
    required this.clicked,
    required this.cartSubTilesListName,
    required this.cartSubTilesListPrice,
    required this.cartItems,
  }) : super(key: key);

  final CartItems cartItems;

  final bool clicked;
  final String cartSubTilesListName;
  final double cartSubTilesListPrice;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
          margin: const EdgeInsets.only(bottom: 10.0),
          decoration: BoxDecoration(
            color: priColor3,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  height: 35.0,
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  decoration: BoxDecoration(
                    color: priColor2,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Image.asset('assets/icons/${cartItems.icon}.png',
                      scale: 1.3),
                ),
              ),
              Expanded(
                flex: 15,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Fix ${cartItems.name}',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12.0),
                      ),
                      Text(
                        '${cartItems.service} Service',
                        style:
                            const TextStyle(color: textColor2, fontSize: 12.0),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Text('\$${cartItems.price}'),
              ),
              const Expanded(
                flex: 2,
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 18.0,
                ),
              ),
            ],
          ),
        ),
        clicked
            ? CartSubTiles(
                name: cartSubTilesListName,
                price: cartSubTilesListPrice,
              )
            : SizedBox(),
      ],
    );
  }
}

class CartSubTiles extends StatelessWidget {
  const CartSubTiles({
    Key? key,
    required this.name,
    required this.price,
  }) : super(key: key);

  final String name;
  final double price;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return subItem;
      },
      itemCount: cartSubTilesList.length,
      shrinkWrap: true,
    );
  }
}

var subItem = Column(
  children: [
    Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: priColor3,
        borderRadius: BorderRadius.circular(3.0),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                color: lightRed,
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: const Icon(
                Icons.remove,
                color: white,
                size: 12.0,
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
              child: Text(
                '$CartSubTiles.name',
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 12.0),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text('$CartSubTiles.price'),
          ),
        ],
      ),
    ),
    const SizedBox(
      height: 2.0,
    ),
  ],
);

class HomeTiles extends StatelessWidget {
  const HomeTiles(
      {Key? key,
      required this.icon,
      required this.name,
      required this.location})
      : super(key: key);

  final String icon;
  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Microwave(),
                ));
          },
          child: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: priColor3,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 30.0,
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    decoration: BoxDecoration(
                      color: iconBox,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Image.asset('assets/icons/$icon.png', scale: 1.4),
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Fix $name',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12.0,
                              color: Colors.black),
                        ),
                        Text(
                          location,
                          style: const TextStyle(
                              color: bBlackHalf, fontSize: 12.0),
                        ),
                      ],
                    ),
                  ),
                ),
                const Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 18.0,
                    color: bBlack,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
      ],
    );
  }
}

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

class CartItems {
  final String icon;
  final String name;
  final String service;
  final int price;

  CartItems({
    required this.name,
    required this.icon,
    required this.service,
    required this.price,
  });
}
