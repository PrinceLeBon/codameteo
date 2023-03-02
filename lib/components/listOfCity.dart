import 'package:flutter/material.dart';
import '../widget/drawer/childDrawer.dart';
import 'globals.dart';

class ListOfCity extends StatelessWidget {
  const ListOfCity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: cityList.length,
        itemBuilder: (context, index) {
          return ChildDrawer(
              icon: Icons.delete,
              label: cityList[index],
              size: 15,
              index: index);
        });
  }
}
