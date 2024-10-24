// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Q4ui extends StatefulWidget {
  const Q4ui({super.key});

  @override
  State<Q4ui> createState() => _Q4uiState();
}

class _Q4uiState extends State<Q4ui> {
  List<bool> isExpandedList = List.generate(6, (index) => false);
  late YoutubePlayerController _controller;
  bool _isVideoPlaying = false;

  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'Pvleo_gOY-k&ab', // Replace with your YouTube video ID
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        title: Text(
          'Dukaan Premium',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // -------- Card-----------------
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    width: double.infinity,
                    height: 120,
                    color: Colors.blue,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey, width: 0.3),
                        color: Colors.white),
                    width: 370,
                    height: 230,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network(
                              'https://bugbase.s3.ap-south-1.amazonaws.com/v1/temp/bca714f03e7c31d193f14d375347d84da7ffaf30/logo.png-Mon%20Oct%2017%202022',
                              scale: 20,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'dukaan',
                                    style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(0, -6),
                                    child: Text(
                                      'PREMIUM',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Get Dukaan Premium for just ',
                              style: GoogleFonts.manrope(
                                  fontSize: 22, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              '₹4,999/year',
                              style: GoogleFonts.manrope(
                                  fontSize: 22, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'All the advanced features for scaling your',
                              style: GoogleFonts.manrope(),
                            ),
                            Text(
                              'business.',
                              style: GoogleFonts.manrope(),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              //---------------Card End--------------
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    'Features',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              ListView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  //-------------------------Each Tile---------------------------
                  ListTile(
                    leading: Icon(
                      Icons.language_rounded,
                      size: 50,
                    ),
                    title: Text('Custom Domain name'),
                    subtitle: Text(
                        'Get your own custom domain and build your brand on the internet.'),
                  ),
                  //-------------------------Each Tile---------------------------
                  ListTile(
                    leading: Icon(
                      Icons.verified_outlined,
                      size: 50,
                    ),
                    title: Text('Verified seller badge'),
                    subtitle: Text(
                        'Get green verified badge under your store name and build trust.'),
                  ),
                  //-------------------------Each Tile---------------------------
                  ListTile(
                    leading: Icon(
                      Icons.laptop_chromebook,
                      size: 50,
                    ),
                    title: Text('Dukaan for PC'),
                    subtitle: Text(
                      'Access all the exclusive premium features on Dukaan for PC.',
                    ),
                  ),
                  //-------------------------Each Tile---------------------------
                  ListTile(
                    leading: Icon(
                      Icons.support_agent,
                      size: 50,
                    ),
                    title: Text('Priority support'),
                    subtitle: Text(
                        'Get your questions resolved with our priority customer support.'),
                  ),
                  Divider(),
                ],
              ),
              //-------------------------------------------Features done----------------------------
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    'What is Dukaan Premium?',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Center(
                child: _isVideoPlaying
                    ? YoutubePlayer(
                        controller: _controller,
                        showVideoProgressIndicator: true,
                      )
                    : GestureDetector(
                        onTap: () {
                          setState(() {
                            _isVideoPlaying = true;
                          });
                        },
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                // Replace with the YouTube video thumbnail image URL
                                Image.network(
                                  'https://img.youtube.com/vi/Pvleo_gOY-k/maxresdefault.jpg',
                                  fit: BoxFit.cover,
                                  width: 350,
                                  height: 200,
                                ),
                                Container(
                                    color: Colors.black45,
                                    child: FaIcon(
                                      FontAwesomeIcons.youtube,
                                      size: 64,
                                      color: Colors.red,
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(),
              SizedBox(
                height: 20,
              ),
              //----------------------Frequently add questions-----------------------
              ExpansionPanelList(
                elevation: 1,
                expansionCallback: (int index, bool isExpanded) {
                  setState(() {
                    isExpandedList[index] = !isExpandedList[index];
                    print(isExpanded);
                  });
                },
                children: [
                  ExpansionPanel(
                    headerBuilder: (BuildContext ctx, bool isExpanded) {
                      return ListTile(
                        title: Text(
                          'What types of businesses can use Dukaan Premium?',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      );
                    },
                    body: ListTile(
                      title: Text(
                          'Dukaan caters to a wide variety of sellers. Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online - Dukaan is the perfect platform for you.'),
                    ),
                    isExpanded: isExpandedList[0],
                  ),
                  //=================================FAQ END=============================================
                  ExpansionPanel(
                    headerBuilder: (BuildContext ctx, bool isExpanded) {
                      return ListTile(
                        title: Text(
                          'What is your refund policy?',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      );
                    },
                    body: ListTile(
                      title: Text(
                          'Dukaan caters to a wide variety of sellers. Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online - Dukaan is the perfect platform for you.'),
                    ),
                    isExpanded: isExpandedList[1],
                  ),
                  //=================================FAQ END=============================================
                  ExpansionPanel(
                    headerBuilder: (BuildContext ctx, bool isExpanded) {
                      return ListTile(
                        title: Text(
                          'Will there be an automatic charge after the paid trial?',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      );
                    },
                    body: ListTile(
                      title: Text(
                          'Dukaan caters to a wide variety of sellers. Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online - Dukaan is the perfect platform for you.'),
                    ),
                    isExpanded: isExpandedList[2],
                  ),
                  //=================================FAQ END=============================================
                  ExpansionPanel(
                    headerBuilder: (BuildContext ctx, bool isExpanded) {
                      return ListTile(
                        title: Text(
                          'What payment methods do you offer?',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      );
                    },
                    body: ListTile(
                      title: Text(
                          'Dukaan caters to a wide variety of sellers. Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online - Dukaan is the perfect platform for you.'),
                    ),
                    isExpanded: isExpandedList[3],
                  ),
                  //=================================FAQ END=============================================
                  ExpansionPanel(
                    headerBuilder: (BuildContext ctx, bool isExpanded) {
                      return ListTile(
                        title: Text(
                          'What happens when my free trial ends?',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      );
                    },
                    body: ListTile(
                      title: Text(
                          'Dukaan caters to a wide variety of sellers. Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online - Dukaan is the perfect platform for you.'),
                    ),
                    isExpanded: isExpandedList[4],
                  ),
                  //=================================FAQ END=============================================
                  ExpansionPanel(
                    headerBuilder: (BuildContext ctx, bool isExpanded) {
                      return ListTile(
                        title: Text(
                          'What are the terms for the custom domain?',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      );
                    },
                    body: ListTile(
                      title: Text(
                          'Dukaan caters to a wide variety of sellers. Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online - Dukaan is the perfect platform for you.'),
                    ),
                    isExpanded: isExpandedList[5],
                  ),
                  //=================================FAQ END=============================================
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    'Need help? Get in touch',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              //
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23.0),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 0.3),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      height: 90,
                      width: 175,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.message_outlined),
                            Text('Live Chat')
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey, width: 0.3),
                      ),
                      height: 90,
                      width: 175,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.call),
                            Text('Phone Call'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23.0),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Select Domain',
                        style: TextStyle(fontSize: 22, color: Colors.blue),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Get Premium',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 2, 119, 216),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
