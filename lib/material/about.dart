// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(223, 2, 206, 241),
        title: const Text('About Me'),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            Container(
                margin: const EdgeInsets.only(top: 50, bottom: 10),
                // ignore: prefer_const_constructors
                child: Text(
                  "I am",
                  style: const TextStyle(fontSize: 30),
                )),

            SizedBox(
              width: 150,
              child: Image.asset("images/Anya_Anya.jpg"),
            ),
            // ignore: prefer_const_constructors
            SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('About Me'),
              onTap: () {
                // Navigasi ke halaman about me
                Navigator.of(context).pushNamed('/Me');
              },
            ),
            ListTile(
              leading: const Icon(Icons.work),
              title: const Text('Work Experience'),
              onTap: () {
                // Navigasi ke halaman work experience
                Navigator.of(context).pushNamed('/Work');
              },
            ),
            ListTile(
              leading: const Icon(Icons.school),
              title: const Text('Education'),
              onTap: () {
                // Navigasi ke halaman education
                Navigator.of(context).pushNamed('/Edu');
              },
            ),
            ListTile(
              leading: const Icon(Icons.mail),
              title: const Text('Contact'),
              onTap: () {
                // Navigasi ke halaman contact
                Navigator.of(context).pushNamed('/Cont');
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'Hello!',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 100,
              width: 100,
              child: Image.asset("images/Anya.jpg"),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              ' My name is Wisfie Syahbani',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Saya adalah Lulusan SMK dari Tangerang pada tahun 2020. Saya selalu tertantang dengan proyek baru dalam pembuatan Web dan semacamnya.",
              style: TextStyle(fontSize: 15),
            ),
            Column(
              children: const [
                ListTile(
                  title: Text('Date of Birth'),
                  trailing: Text('01/01/1999'),
                ),
                ListTile(
                  title: Text('Nationality'),
                  trailing: Text('Indonesian'),
                ),
                ListTile(
                  title: Text('Interest'),
                  trailing: Text('Programming'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'I hope you find this information useful.                             Thank you for visiting my page!',
            ),
          ],
        ),
      ),
    );
  }
}
