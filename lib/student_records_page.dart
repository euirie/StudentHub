import 'package:flutter/material.dart';

class StudentRecord {
  final String name;
  final int matric;
  final double cgpa;
  final String status;

  StudentRecord(this.name, this.matric, this.cgpa, this.status);
}

class StudentRecordsPage extends StatefulWidget {
  const StudentRecordsPage({super.key});

  @override
  State<StudentRecordsPage> createState() => _StudentRecordsPageState();
}

class _StudentRecordsPageState extends State<StudentRecordsPage> {
  // Requirement: 10 sample student records
  late List<StudentRecord> _records;
  int? _sortColumnIndex;
  bool _isAscending = true;

  @override
  void initState() {
    super.initState();
    _records = [
      StudentRecord('Muhamad Ilfan', 105125, 3.85, 'Active'),
      StudentRecord('Nurhidayah Fatiha', 104299, 3.90, 'Active'),
      StudentRecord('Ahmad Faiz', 105111, 3.45, 'Active'),
      StudentRecord('Sarah Connor', 105114, 3.20, 'Probation'),
      StudentRecord('Jason Lee', 105113, 3.75, 'Active'),
      StudentRecord('Nurul Huda', 105112, 3.60, 'Active'),
      StudentRecord('Michael Chang', 105201, 2.95, 'Active'),
      StudentRecord('Emily Chen', 105202, 3.95, 'Active'),
      StudentRecord('David Raj', 105203, 3.10, 'Probation'),
      StudentRecord('Siti Aminah', 105204, 3.80, 'Active'),
    ];
  }

  // Requirement: Ascending and descending sorting functionality
  void _sort<T>(
    Comparable<T> Function(StudentRecord r) getField,
    int columnIndex,
    bool ascending,
  ) {
    _records.sort((a, b) {
      final aValue = getField(a);
      final bValue = getField(b);
      return ascending
          ? Comparable.compare(aValue, bValue)
          : Comparable.compare(bValue, aValue);
    });
    setState(() {
      _sortColumnIndex = columnIndex;
      _isAscending = ascending;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            child: DataTable(
              sortColumnIndex: _sortColumnIndex,
              sortAscending: _isAscending,
              headingTextStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.orangeAccent,
              ),
              // Requirement: At least four columns
              columns: [
                DataColumn(
                  label: const Text('Name'),
                  onSort: (columnIndex, ascending) =>
                      _sort<String>((r) => r.name, columnIndex, ascending),
                ),
                DataColumn(
                  label: const Text('Matric No.'),
                  numeric: true,
                  onSort: (columnIndex, ascending) =>
                      _sort<num>((r) => r.matric, columnIndex, ascending),
                ),
                DataColumn(
                  label: const Text('CGPA'),
                  numeric: true,
                  onSort: (columnIndex, ascending) =>
                      _sort<num>((r) => r.cgpa, columnIndex, ascending),
                ),
                const DataColumn(label: Text('Status')),
              ],
              rows: _records.map((record) {
                return DataRow(
                  cells: [
                    DataCell(Text(record.name)),
                    DataCell(Text(record.matric.toString())),
                    DataCell(
                      Text(
                        record.cgpa.toStringAsFixed(2),
                        style: TextStyle(
                          color: record.cgpa >= 3.5
                              ? Colors.greenAccent
                              : Colors.white,
                          fontWeight: record.cgpa >= 3.5
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    ),
                    DataCell(
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: record.status == 'Active'
                              ? Colors.green.withValues(alpha: 0.2)
                              : Colors.red.withValues(alpha: 0.2),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          record.status,
                          style: TextStyle(
                            color: record.status == 'Active'
                                ? Colors.greenAccent
                                : Colors.redAccent,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
