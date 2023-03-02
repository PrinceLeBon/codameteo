import 'package:codameteo/widget/drawer/showDialog.dart';
import 'package:flutter/material.dart';

class HeadOfDrawer extends StatefulWidget {
  const HeadOfDrawer({Key? key}) : super(key: key);

  @override
  State<HeadOfDrawer> createState() => _HeadOfDrawerState();
}

class _HeadOfDrawerState extends State<HeadOfDrawer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'My cities',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Container(
            height: 10,
          ),
          TextButton(
              onPressed: _showMyDialog,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Add a City',
                  style: TextStyle(color: Colors.black),
                ),
              )),
          Container(
            height: 10,
          )
        ],
      ),
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return const AddCity();
      },
    );
  }
}
