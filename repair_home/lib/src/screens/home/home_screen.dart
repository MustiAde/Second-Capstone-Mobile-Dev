import 'package:flutter/material.dart';
import 'package:repair_home/src/screens/home/fix_microwave.dart';
import 'package:repair_home/src/shared/constants.dart';
import 'package:repair_home/src/shared/widgets.dart';

class HomeScreen extends StatefulWidget {
  static var homeTilesList;

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List homeTilesList = [
    const HomeTiles(icon: 'microwave', name: 'Microwave', location: 'Kitchen'),
    const HomeTiles(icon: 'tv', name: 'TV set', location: 'Living room'),
  ];

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: backgroundMain,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          leading: const Icon(Icons.menu, color: Colors.black),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
                size: 18.0,
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: Stack(
            children: [
              Image.asset(
                'assets/watermarks/home_logo.png',
                height: _size.height * 0.30,
                color: blueBlue.withOpacity(0.15),
              ),
              _homeBody(_size),
            ],
          ),
        ));
  }

  Widget _homeBody(Size size) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'What\'s broken?',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: bBlack),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.0,
                        color: lightAsh,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search appliances',
                        hintStyle: const TextStyle(
                          color: lightAsh,
                          fontWeight: FontWeight.w500,
                        ),
                        suffixIcon: Image.asset(
                          'assets/icons/search_icon.png',
                          color: lightAsh,
                          scale: 1.3,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        focusColor: Colors.white,
                        hoverColor: Colors.white,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    'Offers',
                    style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: bBlack),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Image.asset('assets/idek_man.png', scale: 1.2),
                  Image.asset('assets/idek_man2.png', scale: 1.2),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 5.0,
                  ),
                  const Text(
                    'We can fix it',
                    style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: bBlack),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 16.0),
                        decoration: BoxDecoration(
                          color: bBlack,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: const Text(
                          'Offers',
                          style: TextStyle(
                              color: text1,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Text(
                        'Kitchen',
                        style: TextStyle(
                            color: text2,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500),
                      ),
                      const Text(
                        'Livingroom',
                        style: TextStyle(
                            color: text2,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500),
                      ),
                      const Text(
                        'Bathroom',
                        style: TextStyle(
                            color: text2,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return HomeTiles(
                          icon: homeTilesList[index].icon,
                          name: homeTilesList[index].name,
                          location: homeTilesList[index].location);
                    },
                    itemCount: homeTilesList.length,
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
