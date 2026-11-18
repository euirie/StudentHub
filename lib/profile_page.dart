import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile / About'),
        backgroundColor: Colors.blue.shade800,
        elevation: 0,
      ),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.blue.shade800,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
              ),
              Positioned(
                bottom: -50,
                child: CircleAvatar(
                  radius: 55,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.grey.shade300,
                    child: const Icon(
                      Icons.person,
                      size: 50,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 60),
          const Text(
            'Nurhidayah Fatiha Mansor',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Matric: 105826',
            style: TextStyle(
              fontSize: 16,
              color: Colors.blueGrey,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            'Software Engineering',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView(
                children: const [
                  ListTile(
                    leading: Icon(Icons.info_outline, color: Colors.blue),
                    title: Text('App Name'),
                    subtitle: Text('StudentHub'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.code, color: Colors.blue),
                    title: Text('Version'),
                    subtitle: Text('1.0.0 (Lab Exercise 5.1)'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.school, color: Colors.blue),
                    title: Text('Course'),
                    subtitle: Text('TMA3084 - Software Engineering Laboratory'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}