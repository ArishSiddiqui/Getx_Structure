import 'package:example_app/Custom/custom_loader.dart';
import 'package:example_app/Screen/Home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

// dependency Injection
  final homeControl = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('widget.title'),
      ),
      body: Obx(() {
        return homeControl.isLoading.value
            ? const CustomLoader()
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'You have pushed the button this many times:',
                    ),
                    Text(
                      '${homeControl.counter.value}',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),
              );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: homeControl.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
