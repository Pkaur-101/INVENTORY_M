import 'package:flutter/material.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Community'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'Community',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Here you can interact with other members of the community.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.group, size: 40, color: Colors.black),
              title: const Text(
                'Community Chat',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              onTap: () {
                // Implement chat functionality
              },
            ),
            ListTile(
              leading: const Icon(Icons.event, size: 40, color: Colors.black),
              title: const Text(
                'Events',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              onTap: () {
                // Implement events functionality
              },
            ),
            ListTile(
              leading: const Icon(Icons.forum, size: 40, color: Colors.black),
              title: const Text(
                'Forum',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              onTap: () {
                // Implement forum functionality
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Community',
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: 1,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushNamed(context, '/home');
          }
        },
      ),
    );
  }
}
