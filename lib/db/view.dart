import 'package:flutter/material.dart';
import 'package:employee_app/db/db_service.dart';
import 'package:employee_app/db/user.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  final _databaseService = DatabaseService();
  final _formKey = GlobalKey<FormState>();
  final name = TextEditingController();
  final age = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    name.dispose();
    age.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Employees CRUD",
          style: TextStyle(color: Colors.blue, fontSize: 30),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20), // Add some space at the top
              const Text(
                'Name',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                  height:
                      8), // Add some space between the label and the TextField
              TextFormField(
                controller: name,
                maxLength: 30,
                decoration: const InputDecoration(
                  labelText: 'Enter your name',
                  hintText: 'Type something',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.text_fields),
                ),
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              const SizedBox(
                  height: 20), // Add some space between the TextFields
              const Text(
                'Age',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                  height:
                      8), // Add some space between the label and the TextField
              TextFormField(
                controller: age,
                maxLength: 30,
                decoration: const InputDecoration(
                  labelText: 'Enter your age',
                  hintText: 'Type something',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.text_fields),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your age';
                  }
                  if (int.tryParse(value) == null) {
                    return 'Please enter a valid number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          final userdata =
                              User(name: name.text, age: int.parse(age.text));

                          try {
                            await _databaseService
                                .create(userdata)
                                .then((value) {
                              Fluttertoast.showToast(
                                  msg: "Employee added successfully",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.green,
                                  textColor: Colors.white,
                                  fontSize: 16.0);
                            });
                          } catch (e) {
                            print('Error adding employee: $e');
                          }
                        }
                      },
                      child: const Text("Add")),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      onPressed: () {
                        _databaseService.read();
                      },
                      child: const Text("Read")),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      onPressed: () {
                        _databaseService.update();
                      },
                      child: const Text("Update")),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      onPressed: () {
                        _databaseService.delete();
                      },
                      child: const Text("Delete")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
