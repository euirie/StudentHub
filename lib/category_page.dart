import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Academic Programmes'),
          backgroundColor: const Color(0xFF1E1E2C),
          elevation: 0,
          bottom: const TabBar(
            indicatorColor: Colors.pinkAccent,
            labelColor: Colors.pinkAccent,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(icon: Icon(Icons.code), text: 'Software'),
              Tab(icon: Icon(Icons.wifi), text: 'Network'),
              Tab(icon: Icon(Icons.psychology), text: 'Cognitive'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            _CategoryContent(
              title: 'Software Engineering Students',
              icon: Icons.code,
            ),
            _CategoryContent(
              title: 'Network Computing Students',
              icon: Icons.wifi,
            ),
            _CategoryContent(
              title: 'Cognitive Science Students',
              icon: Icons.psychology,
            ),
          ],
        ),
      ),
    );
  }
}

class _CategoryContent extends StatelessWidget {
  final String title;
  final IconData icon;

  const _CategoryContent({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 80,
            color: Colors.orangeAccent.withValues(alpha: 0.5),
          ), // Fixed withValues
          const SizedBox(height: 16),
          Text(
            title,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Programme student list will be displayed here.',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
