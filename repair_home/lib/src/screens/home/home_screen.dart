import 'package:flutter/material.dart';
import 'package:repair_home/src/shared/constants.dart';
import 'package:repair_home/src/shared/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightWhite,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: const Icon(Icons.menu, color: bBlack),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.shopping_cart_outlined,
              color: bBlack,
              size: 18.0,
            ),
          ),
        ],
      ),
      body: Container(
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
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                    decoration: inputTextDecoration.copyWith(
                        hintText: 'Search appliances',
                        suffixIcon: Icon(Icons.screen_search_desktop_outlined,
                            color: Colors.grey.shade500)),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    'Offers',
                    style:
                        TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Image.asset('assets/idek_man.png'),
                  Image.asset('assets/idek_man2.png'),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    'We can fix it',
                    style:
                        TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
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
                              color: Colors.white,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Text(
                        'Kitchen',
                        style: TextStyle(
                            color: textColor2,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500),
                      ),
                      const Text(
                        'Livingroom',
                        style: TextStyle(
                            color: textColor2,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500),
                      ),
                      const Text(
                        'Bathroom',
                        style: TextStyle(
                            color: textColor2,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500),
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
