import 'package:dars_12_uy_ishi/pages/main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ThirdPage extends StatefulWidget {
  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  int index = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 50),
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Download",
              style: TextStyle(color: Colors.white, fontSize: 24),
              textAlign: TextAlign.center,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey, width: 3),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "List Movie",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.deepPurple, width: 3),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Downloading",
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 150,
              // clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                  color: Colors.blueGrey.shade900,
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset(
                      "assets/images/captain.jpg",
                      fit: BoxFit.cover,
                      height: 130,
                      width: 120,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: const TextSpan(
                              text: "Captain America: The First Avenger (2011)",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          textAlign: TextAlign.start,
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 70,
                                      height: 3,
                                      color: Colors.deepPurple,
                                    ),
                                    Container(
                                      width: 70,
                                      height: 3,
                                      color: Colors.grey,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "720K/s",
                                      style: TextStyle(
                                          color: Colors.deepPurple,
                                          fontSize: 12),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "250MB/1,5GB",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 14,
                            ),
                            Icon(
                              Icons.pause_circle_outline,
                              color: Colors.grey,
                            ),
                            Icon(
                              Icons.more_horiz,
                              color: Colors.grey,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 150,
              // clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                  color: Colors.blueGrey.shade900,
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset(
                      "assets/images/aladdin.jpg",
                      fit: BoxFit.cover,
                      height: 130,
                      width: 120,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: const TextSpan(
                              text: "Disney's Aladdin (2018)",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          textAlign: TextAlign.start,
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 70,
                                      height: 3,
                                      color: Colors.deepPurple,
                                    ),
                                    Container(
                                      width: 70,
                                      height: 3,
                                      color: Colors.grey,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "923K/s",
                                      style: TextStyle(
                                          color: Colors.deepPurple,
                                          fontSize: 12),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "435MB/1,2GB",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 14,
                            ),
                            Icon(
                              Icons.pause_circle_outline,
                              color: Colors.grey,
                            ),
                            Icon(
                              Icons.more_horiz,
                              color: Colors.grey,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.home_rounded),
                color: Colors.grey,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MainPage(),
                    ),
                  );
                },
                icon: const Icon(Icons.search),
                color: Colors.grey,
              ),
              label: ""),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.today_outlined,
                color: Colors.grey,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ThirdPage(),
                    ),
                  );
                },
                icon: Icon(Icons.download),
                color: Colors.grey,
              ),
              label: ""),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.grey,
              ),
              label: ""),
        ],
        currentIndex: index,
        onTap: (int i) {
          setState(() {
            index = i;
          });
        },
      ),
    );
  }
}
