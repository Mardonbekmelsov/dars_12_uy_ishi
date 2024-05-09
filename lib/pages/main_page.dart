import 'package:dars_12_uy_ishi/controllers/movie_lists.dart';
import 'package:dars_12_uy_ishi/pages/second_page.dart';
import 'package:dars_12_uy_ishi/pages/third_page.dart';
import 'package:dars_12_uy_ishi/widgets/movie_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 50),
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey.shade700,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.grey.shade300,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Search by title, genre, actor",
                      style: TextStyle(
                          color: Colors.grey.shade300,
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    )
                  ],
                ),
              ),
            ),
            Text(
              "Recent Searches",
              style: TextStyle(
                  color: Colors.grey.shade300,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            Column(
              children: [
                Row(
                  children: [
                    TextButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey.shade900,
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 20)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SecondPage(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Icon(
                            CupertinoIcons.clock,
                            color: Colors.deepPurpleAccent.shade700,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Comedy",
                            style: TextStyle(
                                color: Colors.deepPurpleAccent.shade700),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    TextButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey.shade900,
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 20)),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            CupertinoIcons.clock,
                            color: Colors.deepPurpleAccent.shade700,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Captain America",
                            style: TextStyle(
                                color: Colors.deepPurpleAccent.shade700),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    TextButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey.shade900,
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 20)),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            CupertinoIcons.clock,
                            color: Colors.deepPurpleAccent.shade700,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Captain Marvel",
                            style: TextStyle(
                                color: Colors.deepPurpleAccent.shade700),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    TextButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey.shade900,
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 20)),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            CupertinoIcons.clock,
                            color: Colors.deepPurpleAccent.shade700,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Thor",
                            style: TextStyle(
                                color: Colors.deepPurpleAccent.shade700),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              "Popular",
              style: TextStyle(
                  color: Colors.grey.shade300,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            Flexible(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (var movie in popular) movieContainer(movie),
                  ],
                ),
              ),
            ),
            Text(
              "Recommendations For You",
              style: TextStyle(
                  color: Colors.grey.shade300,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            Flexible(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (var movie in recommendation) movieContainer(movie),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
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
