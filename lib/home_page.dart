import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_topic/controller/counter_controller.dart';

class HomePage extends StatelessWidget{
  var controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(onPressed: (){
           // Get.changeTheme(ThemeData.dark());
            Get.changeTheme(Get.isDarkMode? ThemeData.light(): ThemeData.dark());
          }, icon: Icon(Get.isDarkMode?Icons.dark_mode:Icons.light_mode)),

        ],
      ),
      body: ListView(
        children: [
          Obx((){
            return Center(child: Text("${controller.getCount()}",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),));
          }),
          Card(
            child: ListTile(
              title: Text("Tap and open the dialog box"),
              onTap: (){
                Get.defaultDialog(
                  title: "Hello",
                  middleText: "Hello world",
                  cancel: ElevatedButton(onPressed: (){}, child: Text("Cancel")),
                  confirm: TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text("Confirm")),
                );
              },
            ),
          ),
          Card(child: ListTile(
            title: Text("Tap and open the snackbar"),
            onTap: (){
              Get.snackbar("This is snack", "This is message", snackPosition: SnackPosition.TOP);
            }
          )),
          Card(child: ListTile(
            title: Text("Tap and open the bottom sheet"),
            onTap: (){
              Get.bottomSheet(
                Container(
                  color: Colors.red,
                 child: ListTile(
                   title: Text("Change the theme"),
                   trailing: IconButton(onPressed: (){
                     Get.changeTheme(ThemeData.dark());
                     Get.changeThemeMode(ThemeMode.dark);
                   }, icon: Icon(Icons.light_mode)),
                 ),
                )


              );
               }
          )),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          controller.increment();
          },
        child: Icon(Icons.add),
      ),
    );
  }
}