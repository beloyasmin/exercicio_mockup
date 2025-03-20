import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: homepage());
  }
}

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  String? _selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1),
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 20,
              children: [
                Rowinput(label: "First Name: "),
                Rowinput(label: "Last Name: "),
                Row(
                  children: [
                    SizedBox(
                      width: 160,
                      child: RadioListTile<String>(
                        title: Text("Male", style: TextStyle(fontSize: 14)),
                        value: "Male",
                        groupValue: _selectedGender,
                        onChanged: (value) {
                          setState(() {
                            _selectedGender = value;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 160,
                      child: RadioListTile<String>(
                        title: Text("Female", style: TextStyle(fontSize: 14)),
                        value: "Female",
                        groupValue: _selectedGender,
                        onChanged: (value) {
                          setState(() {
                            _selectedGender = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Rowinput(label: "Employee ID:  "),
                Rowinput(label: "Designation:  "),
                Rowinput(label: "Phone Number: "),
                SizedBox(width: 20),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Text("Submit"),
                ),
              ],
            ),
          ),
          Positioned(
            top: 4.0,
            left: 16.0,
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 4.0),
              child: Text(
                "Employee Details",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Rowinput extends StatelessWidget {
  final String label;

  const Rowinput({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 10, height: 10),
        Text(label),
        SizedBox(
          width: 160,
          height: 20,
          child: TextField(
            decoration: InputDecoration(border: OutlineInputBorder()),
          ),
        ),
      ],
    );
  }
}
