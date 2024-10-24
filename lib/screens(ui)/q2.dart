// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Uiq2 extends StatelessWidget {
  const Uiq2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Manage Store',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: const Color.fromARGB(255, 211, 210, 210),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 160,
          ),
          children: [
            // Container of grid
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(8),
              margin: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.orange,
                    child: Icon(
                      Icons.campaign,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Marketing Designs',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            // Container of grid
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(8),
              margin: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      width: 50,
                      color: const Color.fromARGB(255, 97, 236, 102),
                      child: FaIcon(
                        FontAwesomeIcons.indianRupeeSign,
                        size: 50,
                        color: Colors.white,
                      )),
                  Text(
                    'Online Payments',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            // Container of grid
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(8),
              margin: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      width: 50,
                      color: const Color.fromARGB(255, 255, 209, 4),
                      child: FaIcon(
                        FontAwesomeIcons.percent,
                        size: 50,
                        color: Colors.white,
                      )),
                  Text(
                    'Discount Coupons',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            // Container of grid
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(8),
              margin: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      width: 70,
                      height: 55,
                      color: const Color.fromARGB(255, 0, 141, 106),
                      child: FaIcon(
                        FontAwesomeIcons.userGroup,
                        size: 40,
                        color: Colors.white,
                      )),
                  Text(
                    'My   Customers',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            // Container of grid
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(8),
              margin: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      width: 60,
                      color: const Color.fromARGB(255, 132, 133, 132),
                      child: FaIcon(
                        FontAwesomeIcons.qrcode,
                        size: 50,
                        color: Colors.white,
                      )),
                  Text(
                    'Store QR   Code',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            // Container of grid
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(8),
              margin: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      width: 80,
                      color: const Color.fromARGB(255, 77, 0, 221),
                      child: FaIcon(
                        FontAwesomeIcons.moneyBill,
                        size: 50,
                        color: Colors.white,
                      )),
                  Text(
                    'Extra    Charges',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            // Container of grid
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(8),
              margin: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            width: 70,
                            color: const Color.fromARGB(255, 219, 9, 139),
                            child: FaIcon(
                              FontAwesomeIcons.tableList,
                              size: 50,
                              color: Colors.white,
                            )),
                        Container(
                            width: 40,
                            height: 30,
                            color: Colors.green,
                            child: Center(
                              child: Text(
                                'New',
                                style: TextStyle(color: Colors.white),
                              ),
                            ))
                      ]),
                  Text(
                    'Order         Form',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'List'),
          BottomNavigationBarItem(
              icon: Icon(Icons.inventory), label: 'Product'),
          BottomNavigationBarItem(icon: Icon(Icons.layers), label: 'Manage'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: 3,
      ),
    );
  }
}
