import 'package:flutter/material.dart';
import 'package:repair_home/src/shared/constants.dart';
import 'package:repair_home/src/shared/widgets.dart';

class Cart extends StatefulWidget {
  Cart(
      {Key? key,
      // required
      this.icon,
      // required
      this.name,
      // required
      this.service,
      // required
      this.price})
      : super(key: key);

  final String? icon;
  final String? name;
  final String? service;
  final int? price;

  final List cartTilesList = [
    const CartTiles(name: 'Fridge', icon: 'fridge', service: '2', price: 70),
    const CartTiles(name: 'Washer', icon: 'washer', service: '1', price: 135),
    const CartTiles(
        name: 'Computer', icon: 'computer', service: '1', price: 30),
  ];

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightWhite,
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          size: 14.0,
          color: Colors.black,
        ),
        elevation: 0.0,
        title: const Text(
          'Cart',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0),
        ),
        centerTitle: true,
        backgroundColor: lightWhite,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: priColor3,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1.0,
                            offset: Offset(1, 1),
                          ),
                        ]),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            decoration: BoxDecoration(
                              color: priColor2,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Image.asset('assets/icons/microwave.png'),
                          ),
                        ),
                        Expanded(
                          flex: 8,
                          child: Padding(
                            padding:
                                const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Fix Microwave',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.0),
                                ),
                                Text(
                                  'Kitchen',
                                  style: TextStyle(
                                      color: textColor2, fontSize: 12.0),
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
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: priColor3,
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                    child: Row(
                      children: const [
                        Expanded(
                          flex: 1,
                          child: Icon(
                            Icons.arrow_circle_right,
                            color: lightRed,
                            size: 18.0,
                          ),
                        ),
                        Expanded(
                          flex: 8,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Set up Microwave',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12.0),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text('\$70'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  // InkWell(
                  //   onTap: () {},
                  //   child: Container(
                  //     padding: const EdgeInsets.all(8.0),
                  //     decoration: BoxDecoration(
                  //       color: priColor3,
                  //       borderRadius: BorderRadius.circular(10.0),
                  //     ),
                  //     child: Row(
                  //       children: [
                  //         Expanded(
                  //           flex: 1,
                  //           child: Container(
                  //             padding:
                  //                 const EdgeInsets.symmetric(vertical: 4.0),
                  //             decoration: BoxDecoration(
                  //               color: priColor2,
                  //               borderRadius: BorderRadius.circular(10.0),
                  //             ),
                  //             child: Image.asset('assets/icons/fridge.png'),
                  //           ),
                  //         ),
                  //         Expanded(
                  //           flex: 8,
                  //           child: Padding(
                  //             padding: const EdgeInsets.fromLTRB(
                  //                 20.0, 0.0, 0.0, 0.0),
                  //             child: Column(
                  //               mainAxisAlignment:
                  //                   MainAxisAlignment.spaceBetween,
                  //               crossAxisAlignment: CrossAxisAlignment.start,
                  //               children: const [
                  //                 Text(
                  //                   'Fix Fridge',
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.bold,
                  //                       fontSize: 12.0),
                  //                 ),
                  //                 Text(
                  //                   '2 Service',
                  //                   style: TextStyle(
                  //                       color: textColor2, fontSize: 12.0),
                  //                 ),
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //         const Expanded(
                  //           flex: 2,
                  //           child: Text('\$70'),
                  //         ),
                  //         const Expanded(
                  //           flex: 1,
                  //           child: Icon(
                  //             Icons.arrow_forward_ios,
                  //             size: 18.0,
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  // const SizedBox(
                  //   height: 10.0,
                  // ),
                  // InkWell(
                  //   onTap: () {},
                  //   child: Container(
                  //     padding: const EdgeInsets.all(8.0),
                  //     decoration: BoxDecoration(
                  //       color: priColor3,
                  //       borderRadius: BorderRadius.circular(10.0),
                  //     ),
                  //     child: Row(
                  //       children: [
                  //         Expanded(
                  //           flex: 1,
                  //           child: Container(
                  //             padding:
                  //                 const EdgeInsets.symmetric(vertical: 4.0),
                  //             decoration: BoxDecoration(
                  //               color: priColor2,
                  //               borderRadius: BorderRadius.circular(10.0),
                  //             ),
                  //             child: Image.asset('assets/icons/washer.png'),
                  //           ),
                  //         ),
                  //         Expanded(
                  //           flex: 8,
                  //           child: Padding(
                  //             padding: const EdgeInsets.fromLTRB(
                  //                 20.0, 0.0, 0.0, 0.0),
                  //             child: Column(
                  //               mainAxisAlignment:
                  //                   MainAxisAlignment.spaceBetween,
                  //               crossAxisAlignment: CrossAxisAlignment.start,
                  //               children: const [
                  //                 Text(
                  //                   'Fix Washer',
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.bold,
                  //                       fontSize: 12.0),
                  //                 ),
                  //                 Text(
                  //                   '1 Service',
                  //                   style: TextStyle(
                  //                       color: textColor2, fontSize: 12.0),
                  //                 ),
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //         const Expanded(
                  //           flex: 2,
                  //           child: Text('\$135'),
                  //         ),
                  //         const Expanded(
                  //           flex: 1,
                  //           child: Icon(
                  //             Icons.arrow_forward_ios,
                  //             size: 18.0,
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  // const SizedBox(
                  //   height: 10.0,
                  // ),
                  // InkWell(
                  //   onTap: () {},
                  //   child: Container(
                  //     padding: const EdgeInsets.all(8.0),
                  //     decoration: BoxDecoration(
                  //       color: priColor3,
                  //       borderRadius: BorderRadius.circular(10.0),
                  //     ),
                  //     child: Row(
                  //       children: [
                  //         Expanded(
                  //           flex: 1,
                  //           child: Container(
                  //             padding:
                  //                 const EdgeInsets.symmetric(vertical: 4.0),
                  //             decoration: BoxDecoration(
                  //               color: priColor2,
                  //               borderRadius: BorderRadius.circular(10.0),
                  //             ),
                  //             child: Image.asset('assets/icons/computer.png'),
                  //           ),
                  //         ),
                  //         Expanded(
                  //           flex: 8,
                  //           child: Padding(
                  //             padding: const EdgeInsets.fromLTRB(
                  //                 20.0, 0.0, 0.0, 0.0),
                  //             child: Column(
                  //               mainAxisAlignment:
                  //                   MainAxisAlignment.spaceBetween,
                  //               crossAxisAlignment: CrossAxisAlignment.start,
                  //               children: const [
                  //                 Text(
                  //                   'Fix Computer',
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.bold,
                  //                       fontSize: 12.0),
                  //                 ),
                  //                 Text(
                  //                   '1 Service',
                  //                   style: TextStyle(
                  //                       color: textColor2, fontSize: 12.0),
                  //                 ),
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //         const Expanded(
                  //           flex: 2,
                  //           child: Text('\$30'),
                  //         ),
                  //         const Expanded(
                  //           flex: 1,
                  //           child: Icon(
                  //             Icons.arrow_forward_ios,
                  //             size: 18.0,
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),

                  ListView.builder(
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {},
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
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4.0),
                                  decoration: BoxDecoration(
                                    color: priColor2,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Image.asset('assets/icons/fridge.png'),
                                ),
                              ),
                              Expanded(
                                flex: 8,
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      20.0, 0.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Fix Fridge',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12.0),
                                      ),
                                      Text(
                                        '2 Service',
                                        style: TextStyle(
                                            color: textColor2, fontSize: 12.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const Expanded(
                                flex: 2,
                                child: Text('\$70'),
                              ),
                              const Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 18.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: 5,
                  ),
                ],
              ),
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 32.0, horizontal: 24.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Expanded(
                        flex: 3,
                        child: Text('Total price'),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text('\$302',
                            style: TextStyle(fontWeight: FontWeight.bold)),
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
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: const Text(
                            'Make an order',
                            style: TextStyle(color: Colors.white),
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
    );
  }
}
