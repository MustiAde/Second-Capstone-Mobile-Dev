import 'package:flutter/material.dart';
import 'package:repair_home/src/screens/home/cart_screen.dart';
import 'package:repair_home/src/shared/constants.dart';

class Microwave extends StatefulWidget {
  const Microwave({Key? key}) : super(key: key);

  @override
  State<Microwave> createState() => _MicrowaveState();
}

class _MicrowaveState extends State<Microwave> {
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
        title: const Text('Fix Microwave',
            style: TextStyle(
                color: bBlack, fontWeight: FontWeight.w600, fontSize: 18.0)),
        elevation: 0.0,
        backgroundColor: lightRedHalf,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.only(
              top: 32.0,
            ),
            decoration: const BoxDecoration(
                color: lightRedHalf,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                )),
            child: Image.asset(
              'assets/microwave_big.png',
              scale: 1.5,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 4,
                      child: Container(
                        height: 40.0,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        decoration: BoxDecoration(
                            color: lightRedHalf,
                            border: Border.all(width: 0.5, color: lightAsh),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: const Text(
                          'Reviews',
                          style: TextStyle(color: bBlack),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                          height: 40.0,
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 15.0),
                          decoration: BoxDecoration(
                              color: bBlack,
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Image.asset(
                            'assets/icons/review.png',
                            color: text1,
                          )),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                InkWell(
                  onTap: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Cart()));
                  }),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(15.0, 15.0, 30.0, 15.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: fixScreenBorder, width: 1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Repair',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '\$52',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                InkWell(
                  onTap: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Cart()));
                  }),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(15.0, 15.0, 30.0, 15.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: fixScreenBorder, width: 1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Setup',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '\$12',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
