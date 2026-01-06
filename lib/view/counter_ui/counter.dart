import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_application/controller/counter_controller/counter_controller.dart';

class CounterGetxView extends StatelessWidget {
   CounterGetxView({super.key});
final CounterController counterController= Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        title: Text("Clickable Counter"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Obx(()=>Text("${counterController.counter}"),),
            Row(


              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {
                  counterController.decrement();

                }, child: Text("prev")),
                ElevatedButton(onPressed: () {
                  counterController.increment();

                }, child: Text("Next")),
              ],
            )
          ],
        ),
      ),

    );
  }
}
