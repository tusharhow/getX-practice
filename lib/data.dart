import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Data extends StatelessWidget {
  const Data({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text(
            '${Get.parameters['someValue']}',
            style: TextStyle(fontSize: 34),
          ),
        ),
      ),
    );
  }
}
