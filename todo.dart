import 'package:flutter/material.dart';

class TodoScreen extends StatefulWidget {
  @override
  _TodoScreenState createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  final List<String> todoList = []; //empty list
  final TextEditingController controller = TextEditingController();
  final TextEditingController descriptioncontroller = TextEditingController();

  void _addTodo() {
    setState(() {
      if (controller.text.isNotEmpty && descriptioncontroller.text.isNotEmpty) {
        todoList.add(controller.text);
        todoList.add(descriptioncontroller.text);

        controller.clear();
        descriptioncontroller.clear();
      }
    });
  }

  void _removeTodoItem(int index) {
    setState(() {
      todoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 18, 208, 255),
        foregroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Create new Task ',
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Title',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(9),
              ),
              contentPadding: EdgeInsets.all(14),
            ),
            controller: controller,
          ),
          const Text(
            'Description',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          TextField(
            maxLines: 3,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(9),
              ),
              contentPadding: EdgeInsets.all(14),
            ),
            controller: descriptioncontroller,
          ),
          const Text(
            'Choose Priority',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(80, 30),
                  backgroundColor: const Color.fromARGB(255, 240, 3, 3)),
              onPressed: () {},
              child: const Text('High'),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(80, 30),
                  backgroundColor: const Color.fromARGB(255, 207, 210, 211)),
              onPressed: () {},
              child: const Text('Medium'),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(80, 30),
                  backgroundColor: const Color.fromARGB(255, 12, 228, 138)),
              onPressed: () {},
              child: const Text('Low'),
            ),
          ]),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: todoList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(todoList[index]),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () => _removeTodoItem(index),
                  ),
                );
              },
            ),
          ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(400, 40),
                  backgroundColor: const Color.fromARGB(255, 18, 208, 255)),
              onPressed: () {
                _addTodo();
              },
              child: const Text(
                'Add',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
