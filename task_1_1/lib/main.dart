import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tab Bar Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.blueGrey,
          textTheme: const TextTheme(
            displaySmall: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
            displayMedium: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
            displayLarge: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          )),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Text(
            'Task 1',
            style: Theme.of(context).textTheme.displayLarge,
          ),
          centerTitle: true,
          bottom: TabBar(
            indicator: BoxDecoration(
              color: Colors.red[800],
              borderRadius: BorderRadius.circular(20),
            ),
            dividerColor: Colors.black,
            tabs: const <Tab>[
              Tab(
                  icon: Icon(
                    Icons.home,
                  ),
                  text: 'Home'),
              Tab(
                icon: Icon(Icons.person),
                text: 'Profile',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            CustomTab(
              icon: Icons.home,
              title: 'Welcome to the Home Tab!',
              content: 'Explore Flutter World',
            ),
            CustomTab(
              icon: Icons.person,
              title: 'Mahmoud Sedky',
              subtitle: 'Flutter Developer',
              content:
                  'Passionate Flutter developer with a love for creating beautiful and functional apps.',
              imagePath: 'assets/profile.jpeg',
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTab extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? subtitle;
  final String content;
  final String? imagePath;

  const CustomTab({
    super.key,
    required this.icon,
    required this.title,
    this.subtitle,
    required this.content,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          imagePath != null
              ? CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage(
                    imagePath!,

                  ),
                )
              : Icon(
                  icon,
                  color: Colors.blueGrey,
                  size: 100,
                ),
          Text(
            title,
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  color: Colors.red[800],
                ),
          ),

          if (subtitle != null)
            Text(
              subtitle!,
              style: Theme.of(context)
                  .textTheme
                  .displaySmall
                  ?.copyWith(color: Colors.blueGrey),
            ),

          Card(
            color: Theme.of(context).primaryColor,
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(content,
                      style: Theme.of(context).textTheme.displayMedium),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
