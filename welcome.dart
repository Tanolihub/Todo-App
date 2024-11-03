import 'package:flutter/material.dart';
import 'package:todo/todo.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final List<String> todoList = []; //empty list
  final TextEditingController controller = TextEditingController();
  final TextEditingController descriptioncontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 244, 252),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 18, 208, 255),
        foregroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Welcome to Notes ',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 40,
              width: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/images/p.png'),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // First Text widget with padding from top and left
            const Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 10.0),
              child: Text(
                'My Priority Task',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),

            SizedBox(height: 20), // Space between widgets

            // Row with two containers
            Row(
              children: [
                // First Container
                Container(
                    width: 130,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 128, 227, 252),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox.shrink(),
                            Icon(
                              Icons.mobile_friendly,
                              color: Colors.black,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          ' 2 hours ago',
                          style: TextStyle(fontSize: 11),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          ' Mobile App \n UI Design',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          ' using figma and other tool ',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    )),
                const SizedBox(
                  width: 20,
                ),

                // Second Container
                Container(
                    width: 130,
                    height: 150,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 128, 227, 252),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox.shrink(),
                            Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.black,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          ' 4 hours ago',
                          style: TextStyle(fontSize: 11),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          ' Capture Sun \n Rise Shots',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          ' Complete GuruShots Challenge',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    )),
              ],
            ),

            SizedBox(height: 20), // Space between widgets

            // Second Text widget
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'My Tasks',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                IconButton(
                    color: Colors.black,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TodoScreen(),
                          ));

                      /*  showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text('controller'),
                          content: Text('descriptioncontroller'),
                        ),
                      );
                    */
                    },
                    icon: Icon(Icons.add)),
              ],
            ),

            SizedBox(height: 20), // Space between widgets

            // Row with three Text widgets
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text('Today,s Tasks'),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Weekly Tasks'),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Monthly Tasks'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
