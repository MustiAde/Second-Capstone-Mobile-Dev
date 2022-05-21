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
      backgroundColor: lightWhite,
      appBar: AppBar(
        leading:
            const Icon(Icons.arrow_back_ios, color: Colors.black, size: 18.0),
        title: const Text('Fix Microwave',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 18.0)),
        elevation: 0.0,
        backgroundColor: lightRed,
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              color: lightRed,
              height: MediaQuery.of(context).size.height * 0.4,
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.only(top: 32.0,),
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
                              color: lightRed,
                              borderRadius: BorderRadius.circular(10.0)),
                          child: const Text('Reviews'),
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
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10.0)),
                          child: const Icon(
                            Icons.chat,
                            color: Colors.white,
                          ),
                        ),
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
                      padding:
                          const EdgeInsets.fromLTRB(15.0, 15.0, 30.0, 15.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.grey, width: 0.5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [Text('Repair'), Text('\$52')],
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
                      padding:
                          const EdgeInsets.fromLTRB(15.0, 15.0, 30.0, 15.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.grey, width: 0.5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [Text('Setup'), Text('\$12')],
                      ),
                    ),
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
