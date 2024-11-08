import 'package:flutter/material.dart';
import 'Page3.dart';
import 'Page4.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('page2'), 
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Selamat datang di aplikasi ini! Aplikasi ini bertujuan untuk membantu Anda mengelola berbagai kebutuhan sehari-hari dengan mudah.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            
            Center(
              child: Column(
                children: [
                  Icon(
                    Icons.home,
                    size: 100,
                    color: Colors.blue,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Aplikasi Manajemen',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Mudah digunakan, cepat, dan efisien',
                    style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
            Spacer(),
          
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Page3()),
                    );
                  },
                  child: Text('page3'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Page4()),
                    );
                  },
                  child: Text('page4'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
    