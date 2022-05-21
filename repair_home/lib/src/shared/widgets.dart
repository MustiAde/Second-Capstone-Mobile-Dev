import 'package:flutter/material.dart';
import 'package:repair_home/src/shared/constants.dart';

var customBoxDecor = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: const [
    BoxShadow(
      color: lightAsh,
      blurRadius: 3.0,
      spreadRadius: 3.0,
      offset: Offset(3, 5),
    )
  ],
);

var inputTextDecoration = InputDecoration(
  hintStyle: const TextStyle(
    color: textColor2,
    fontWeight: FontWeight.w500,
  ),
  filled: true,
  fillColor: Colors.white,
  focusColor: Colors.white,
  hoverColor: Colors.white,
  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey.shade500),
      borderRadius: BorderRadius.circular(10.0)),
  border: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey.shade500),
      borderRadius: BorderRadius.circular(10.0)),
);

class CartTiles extends StatelessWidget {
  const CartTiles(
      {Key? key,
      required this.name,
      required this.icon,
      required this.service,
      required this.price})
      : super(key: key);

  final String icon;
  final String name;
  final String service;
  final int price;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            print('expand $name widget');
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
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
                    child: Image.asset('assets/icons/$icon.png', scale: 1.3),
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
                          'Fix $name',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12.0),
                        ),
                        Text(
                          '$service Service',
                          style: const TextStyle(
                              color: textColor2, fontSize: 12.0),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Text('\$$price'),
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
        ),
        const SizedBox(
          height: 10.0,
        )
      ],
    );
  }
}
