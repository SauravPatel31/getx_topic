import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_topic/controller/counter_controller.dart';
import 'package:getx_topic/home_page.dart';

class CounterApp extends StatelessWidget{
  var controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    print("build called");
   return Scaffold(
     appBar: AppBar(
       title: Text("Counter App"),
     ),
     body: Center(
       child: Obx((){
         print("only obx build");
         return Text(controller.getCount().toString(),style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),);
       }),
     ),
     floatingActionButton: FloatingActionButton(
       onPressed: (){
         Get.to(HomePage());
       },
       child: Icon(Icons.navigate_next),
     ),
   );
  }

}