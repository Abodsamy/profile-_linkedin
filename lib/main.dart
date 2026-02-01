import 'package:flutter/material.dart';
import 'package:linkedinprofile/widgets/circleAvatar.dart';
import 'package:linkedinprofile/widgets/custom_colum.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          centerTitle: true,
          title: Image.asset(
            'assets/images/linkedin-112.png',
            width: 25,
          ),
          actions: const [
            Icon(Icons.message),
            Icon(Icons.more_vert),
          ],
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const Center(
              child: MyCircleAvatar(
                imagePath: 'assets/images/IMG_٢٠٢١١٠٠٣_١٣٤٥٣٧.jpg',
                radius: 50,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Abdalrhman Samy',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Mobile Developer',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            const Text(
              'Cairo, Egypt',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black45),
            ),
            Container(
              height: 50,
              width: 150,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color(0xff187fb9),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text(
                'Connect',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('4'),
                Text(
                  ' Shared Connections',
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyCircleAvatar(
                    imagePath: 'assets/images/IMG20200925094143.jpg',
                    radius: 25),
                SizedBox(
                  width: 10,
                ),
                MyCircleAvatar(
                    imagePath: 'assets/images/IMG20200925102033.jpg',
                    radius: 25),
                SizedBox(
                  width: 10,
                ),
                MyCircleAvatar(
                    imagePath: 'assets/images/IMG20200925101526.jpg',
                    radius: 25),
                SizedBox(
                  width: 10,
                ),
                MyCircleAvatar(
                    imagePath: 'assets/images/IMG20200926132552.jpg',
                    radius: 25),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 100,
              color: const Color(0xff00868f),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomColumn(
                    number: '2.5K',
                    title: 'connections',
                  ),
                  VerticalDivider(
                    color: Colors.white30,
                  ),
                  CustomColumn(
                    number: '300',
                    title: 'Endorsements',
                  ),
                  VerticalDivider(
                    color: Colors.white30,
                  ),
                  CustomColumn(
                    number: '20',
                    title: 'Recommends',
                  ),
                  VerticalDivider(
                    color: Colors.white30,
                  ),
                  CustomColumn(
                    number: '15',
                    title: 'post',
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.grey,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'Connections',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Discover',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Messages',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_outlined),
              label: 'Activity',
            ),
          ],
        ),


      ),

    );
  }
}
