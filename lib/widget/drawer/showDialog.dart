import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../../components/globals.dart';

class AddCity extends StatelessWidget {

  const AddCity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final myController1 = TextEditingController();
    return AlertDialog(
          title: const Center(child: Text("Add city's name")),
          content: Form(
              key: formKey,
              child: TextFormField(
                style: const TextStyle(fontSize: 13, color: Colors.black),
                controller: myController1,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter city's name";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.location_city),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    hintText: "Enter city's name"),
              )),
          actions: <Widget>[
            TextButton(
              child: const Text('Approve'),
              onPressed: () {
                final cityBox = Hive.box("City_Database");
                cityList.add(myController1.text);
                cityBox.put('cityList', cityList);
                myController1.clear();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
  }
}
