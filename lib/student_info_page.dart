import 'package:flutter/material.dart';

class Student {
  final String name;
  final String matric;
  final String program;
  final String email;

  Student({
    required this.name,
    required this.matric,
    required this.program,
    required this.email,
  });
}

final List<Student> _students = [
  Student(
    name: 'Ahmad Faiz',
    matric: '105111',
    program: 'Software Engineering',
    email: '105111@siswa.unimas.my',
  ),
  Student(
    name: 'Nurul Huda',
    matric: '105112',
    program: 'Cognitive Science',
    email: '105112@siswa.unimas.my',
  ),
  Student(
    name: 'Jason Lee',
    matric: '105113',
    program: 'Multimedia Computing',
    email: '105113@siswa.unimas.my',
  ),
  Student(
    name: 'Sarah Connor',
    matric: '105114',
    program: 'Network Computing',
    email: '105114@siswa.unimas.my',
  ),
];

class StudentInfoPage extends StatelessWidget {
  const StudentInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: _students.length,
      itemBuilder: (context, index) {
        final student = _students[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 12.0),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.pinkAccent.withOpacity(0.2),
              child: const Icon(Icons.person, color: Colors.pinkAccent),
            ),
            title: Text(
              student.name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('${student.matric} • ${student.program}'),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: Colors.orangeAccent,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StudentDetailsPage(student: student),
                ),
              );
            },
          ),
        );
      },
    );
  }
}

class StudentDetailsPage extends StatelessWidget {
  final Student student;

  const StudentDetailsPage({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Details'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.pinkAccent.withOpacity(0.2),
                child: const Icon(
                  Icons.person,
                  size: 50,
                  color: Colors.pinkAccent,
                ),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Name',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            Text(
              student.name,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const Divider(height: 32, color: Colors.white24),

            const Text(
              'Program',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            Text(student.program, style: const TextStyle(fontSize: 18)),
            const Divider(height: 32, color: Colors.white24),

            const Text(
              'Matric Number (Long press to copy)',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            SelectableText(
              student.matric,
              style: const TextStyle(fontSize: 18, color: Color(0xFFFFD1A9)),
            ),
            const Divider(height: 32, color: Colors.white24),

            const Text(
              'Email Address (Long press to copy)',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            SelectableText(
              student.email,
              style: const TextStyle(fontSize: 18, color: Color(0xFFFFD1A9)),
            ),
          ],
        ),
      ),
    );
  }
}
