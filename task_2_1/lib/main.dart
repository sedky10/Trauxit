import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_2_1/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: const MaterialApp(
        home: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Consumer<CounterProvider>(
          builder: (context, counter, child) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        counter.increment();
                      },
                      child: const Icon(Icons.add)),
                  Text(counter.number.toString()),
                  ElevatedButton(
                      onPressed: () {
                       if(counter.number ==0){
                         counter.number=0;
                       }else {
                         counter.decrement();
                       }
                      },
                      child: const Icon(Icons.remove)),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
