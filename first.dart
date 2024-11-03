import 'package:flutter/material.dart';
import 'package:todo/welcome.dart';

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 244, 252),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 18, 208, 255),
        foregroundColor: Colors.black,
        title: const Text(
          'Manage your \n Daily TO DO ',
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/img.png',
            ),
            const SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(30, 20),
                    backgroundColor: const Color.fromARGB(255, 18, 208, 255)),
                onPressed: () {},
                child: null,
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(30, 20),
                    backgroundColor: const Color.fromARGB(255, 18, 208, 255)),
                onPressed: () {},
                child: null,
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(30, 20),
                    backgroundColor: const Color.fromARGB(255, 18, 208, 255)),
                onPressed: () {},
                child: null,
              ),
            ]),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Without much worry just manage \n things as easy as piece of cake',
              style: TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(57, 20),
                  foregroundColor: Colors.black,
                  backgroundColor: const Color.fromARGB(255, 18, 208, 255)),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Welcome(),
                    ));
              },
              child: const Text('Create a Note'),
            ),
          ],
        ),
      ),
    );
  }
}
