import 'package:flutter/material.dart';
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
                      // Get.snackbar(
                      //   'Another Snack1',
                      //   '',
                      //   snackPosition: SnackPosition.TOP,
                      //   colorText: Colors.green,
                      //   backgroundColor: Colors.black45,
                      //   dismissDirection: SnackDismissDirection.HORIZONTAL,
                      //   messageText: (Text(
                      //     'ANother SNack',
                      //     style: TextStyle(color: Colors.white),
                      //   )),
                      // );

                      // Get.defaultDialog(
                      //   title: 'Dialog Title',
                      //   middleText: 'THis is dialog body text',
                      //   backgroundColor: Colors.greenAccent,
                      //   onCancel: () {},
                      //   cancelTextColor: Colors.black,
                      //   buttonColor: Colors.grey,
                      // );

                      Get.bottomSheet(
                        Container(
                          child: Wrap(
                            children: [
                              ListTile(
                                leading: Icon(Icons.lightbulb),
                                title: Text('Light Theme'),
                                onTap: () {
                                  Get.changeTheme(ThemeData.light());
                                },
                              ),
                              ListTile(
                                leading: Icon(Icons.directions_walk_sharp),
                                title: Text('Dark Theme'),
                                onTap: () {
                                  Get.changeTheme(ThemeData.dark());
                                },
                              ),
                            ],
                          ),
                        ),
                        barrierColor: Colors.transparent,
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
