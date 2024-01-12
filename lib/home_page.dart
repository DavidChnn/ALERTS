import 'package:alerts/main.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          children: [
            Text(
              'Welcome back,',
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
            Text(
              'Username',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        actions: <Widget>[
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.phone_in_talk_rounded,
                ),
              ),
            ],
          ),
        ],
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 20.0,
            backgroundImage: AssetImage(
              'assets/johan.jpg',
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20.0),
            const Text(
              'Your Friend\'s Live Location',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(10, (index) {
                  String profileName = 'Profile${index + 1}';

                  return Container(
                    margin: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const CircleAvatar(
                          radius: 30.0,
                          backgroundImage: AssetImage('assets/johan.jpg'),
                        ),
                        const SizedBox(height: 8.0),
                        Text(profileName),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: MyColors.color1,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on_rounded),
            label: 'Location',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_alert),
            label: 'Alerts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Education',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Feedback',
          ),
        ],
        selectedFontSize: 14.0,
        selectedLabelStyle: const TextStyle(
          color: Colors.black87,
        ),
        showUnselectedLabels: false,
        selectedItemColor: Colors.black87,
      ),
    );
  }
}
