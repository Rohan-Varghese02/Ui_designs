import 'package:flutter/material.dart';

class Ui6 extends StatefulWidget {
  const Ui6({super.key});

  @override
  State<Ui6> createState() => _Ui6State();
}

class _Ui6State extends State<Ui6> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Catalogue',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ))
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            child: TabBar(
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(width: 4, color: Colors.white),
                insets: EdgeInsets.symmetric(horizontal: 150.0),
              ),
              controller: _tabController,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white,
              tabs: [
                Tab(
                  child: Text(
                    'Products',
                    style: TextStyle(fontSize: 23),
                  ),
                ),
                Tab(
                  child: Text(
                    'Categories',
                    style: TextStyle(fontSize: 23),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (ctx, index) {
                return Card(
                  margin: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 16.0),
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.network(
                              'https://i.pinimg.com/236x/25/2a/b3/252ab388c5482a0925384cfbfdc1630d.jpg',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Couch Potato | W Shirt',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    '1 piece',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  Text(
                                    '₹ 799',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    'in stock',
                                    style: TextStyle(
                                        color: Colors.green, fontSize: 20),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Icon(Icons.more_vert),
                                SizedBox(
                                  height: 20,
                                ),
                                Switch(
                                  value: true,
                                  onChanged: (value) {},
                                  activeColor:
                                      const Color.fromARGB(255, 16, 76, 126),
                                )
                              ],
                            )
                          ],
                        ),
                        Divider(),
                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.share,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Share Product',
                                      style: TextStyle(
                                          fontSize: 17, color: Colors.black),
                                    )
                                  ],
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
              itemCount: 10,
            ),
          )
        ],
      ),
    );
  }
}
