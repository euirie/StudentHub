import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.pinkAccent, Colors.orangeAccent],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
              const Positioned(
                top: 80,
                child: Text(
                  'App Profile',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [Shadow(color: Colors.black54, blurRadius: 10)],
                  ),
                ),
              ),
              const Positioned(
                bottom: -50,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Color(0xFF1E1E2C),
                  child: CircleAvatar(
                    radius: 46,
                    backgroundColor: Color(0xFF2A2A3D),
                    child: Icon(
                      Icons.person,
                      size: 50,
                      color: Colors.pinkAccent,
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
            'Muhamad Ilfan',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          const Text(
            'Matric: 105125 | Software Engineering',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          const SizedBox(height: 24),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'About StudentHub',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.orangeAccent,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'StudentHub is a Flutter-based Student Management Application developed for Lab Exercise 5.1. It demonstrates practical implementation of Material Design, navigation, lists, tables, layered interfaces, and state management.',
                      style: TextStyle(height: 1.5),
                    ),
                    SizedBox(height: 16),
                    Divider(),
                    ListTile(
                      leading: Icon(
                        Icons.info_outline,
                        color: Colors.pinkAccent,
                      ),
                      title: Text('Version'),
                      trailing: Text('1.0.0'),
                    ),
                  ],
                ),
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
}
