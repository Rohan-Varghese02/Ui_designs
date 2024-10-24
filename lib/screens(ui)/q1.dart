import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Uipart1 extends StatefulWidget {
  const Uipart1({super.key});

  @override
  State<Uipart1> createState() => _Uipart1State();
}

class _Uipart1State extends State<Uipart1> {
  bool isSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Additional Information',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
      ),
      //---------------------------Body-----------------------------------
      body: SafeArea(
//           child: Column(
//         children: [
//           InkWell(
//             onTap: () {},
//             child: Container(
//               height: 60,
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Icon(
//                       Icons.share_outlined,
//                       size: 40,
//                     ),
//                     Text(
//                       'Share Dukaan App',
//                       style: TextStyle(fontSize: 25),
//                     ),
//                     SizedBox(
//                       width: 40,
//                     ),
//                     Icon(
//                       Icons.arrow_forward_ios,
//                       size: 30,
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
// //=====================================================
//           InkWell(
//             onTap: () {},
//             child: Container(
//               height: 60,
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Icon(
//                       Icons.chat_bubble,
//                       size: 40,
//                     ),
//                     Text(
//                       'Change Language',
//                       style: TextStyle(fontSize: 25),
//                     ),
//                     SizedBox(
//                       width: 40,
//                     ),
//                     Icon(
//                       Icons.arrow_forward_ios,
//                       size: 30,
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           //=====================================================
//           Container(
//             height: 60,
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Icon(
//                     Icons.wechat,
//                     size: 40,
//                   ),
//                   Text(
//                     'Whatsapp Chat Support',
//                     style: TextStyle(fontSize: 25),
//                   ),
//                   SizedBox(
//                     width: 10,
//                   ),
//                   Switch(
//                       activeColor: Colors.blue,
//                       value: isSwitch,
//                       onChanged: (value) {
//                         setState(() {
//                           isSwitch = value;
//                         });
//                       })
//                 ],
//               ),
//             ),
//           ),
//           //=====================================================
//           InkWell(
//             onTap: () {},
//             child: Container(
//               height: 60,
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Icon(
//                       Icons.lock,
//                       size: 40,
//                     ),
//                     Text(
//                       'Privacy Policy',
//                       style: TextStyle(fontSize: 25),
//                     ),
//                     SizedBox(
//                       width: 180,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           //=====================================================
//           InkWell(
//             onTap: () {},
//             child: Container(
//               height: 60,
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Icon(
//                       Icons.star_border,
//                       size: 40,
//                     ),
//                     Text(
//                       'Rate Us',
//                       style: TextStyle(fontSize: 25),
//                     ),
//                     SizedBox(
//                       width: 250,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           //=====================================================
//           InkWell(
//             onTap: () {},
//             child: Container(
//               height: 60,
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Icon(
//                       Icons.logout,
//                       size: 40,
//                     ),
//                     Text(
//                       'Sign Out',
//                       style: TextStyle(fontSize: 25),
//                     ),
//                     SizedBox(
//                       width: 240,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           //=====================================================
//         ],
//       )
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.share, color: Colors.black),
                    title: Text(
                      "Share Dukaan App",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      // Handle tap
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.chat_outlined, color: Colors.black),
                    title: Text(
                      "Change Language",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      // Handle tap
                    },
                  ),
                  ListTile(
                    leading: FaIcon(FontAwesomeIcons.whatsapp),
                    title: Text(
                      "WhatsApp Chat Support",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    trailing: Switch(
                      value: isSwitch, // Default value for the switch
                      onChanged: (bool value) {
                        setState(() {
                          isSwitch = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.lock, color: Colors.black),
                    title: Text(
                      "Privacy Policy",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    onTap: () {
                      // Handle tap
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.star, color: Colors.black),
                    title: Text(
                      "Rate Us",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    onTap: () {
                      // Handle tap
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.logout, color: Colors.black),
                    title: Text(
                      "Sign Out",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    onTap: () {
                      // Handle tap
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Text(
                "Version 2.4.2",
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
