import 'package:flutter/material.dart';
import 'package:flutter_web_practice/data.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: Colors.green,
            height: 400,
            child: SafeArea(
              child: Column(
                children: [
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      Get.snackbar(
                        'Another Snack1',
                        '',
                        snackPosition: SnackPosition.TOP,
                        colorText: Colors.green,
                        backgroundColor: Colors.black45,
                        dismissDirection: SnackDismissDirection.HORIZONTAL,
                        messageText: (Text(
                          'ANother SNack',
                          style: TextStyle(color: Colors.white),
                        )),
                      );

                      Get.defaultDialog(
                        title: 'Dialog Title',
                        middleText: 'THis is dialog body text',
                        backgroundColor: Colors.greenAccent,
                        onCancel: () {},
                        cancelTextColor: Colors.black,
                        buttonColor: Colors.grey,
                      );
                    },
                    child: Text(
                      'Show Dialog',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
