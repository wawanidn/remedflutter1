import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'Page2.dart';
import 'Page3.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page4'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Homepage()),
            );
          },
          child: Text('Pergi ke Halaman Tambah Data'),
        ),
      ),
    );
  }
}

class FormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Data'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SummaryPage()),
            );
          },
          child: Text('Pergi ke Halaman Daftar'),
        ),
      ),
    );
  }
}

class SummaryPage extends StatelessWidget {
  final List<Map<String, String>> data = [
    {'name': 'Ahmad', 'info': 'Kelas 10'},
    {'name': 'Budi', 'info': 'Kelas 11'},
    {'name': 'Cici', 'info': 'Kelas 12'},
    {'name': 'Dedi', 'info': 'Kelas 10'},
    {'name': 'Eka', 'info': 'Kelas 11'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Daftar Siswa',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                },
              ),
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); 
                  },
                  child: Text('Kembali ke Halaman 2'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Page2()),
                    );
                  },
                  child: Text('Kembali ke Halaman 3'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}