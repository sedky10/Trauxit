import 'dart:io';
import 'package:flutter/material.dart';
import 'package:task_1_2/next_page.dart';
import 'package:task_1_2/widgets/label.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController pass = TextEditingController();
  final TextEditingController email = TextEditingController();
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  late String emailName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff6ab6cf),
      body: SafeArea(
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  alignment: AlignmentDirectional.topStart,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff6ab6cf),
                        Color(0xff44debf),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SingleChildScrollView(
                      child: Form(
                        key: _form,
                        child: Column(
                          children: [
                            const Label(state: 'login'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MaterialButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Forget Password ?',
                                    style: TextStyle(
                                      color: Color(0xff37ecba),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                buildLoginButton(),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildLoginButton() {
    return MaterialButton(
      onPressed: () {
        if (_form.currentState!.validate()) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Successful login')),
          );
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => SecondPage(
              ),
            ),
          );
        }
      },
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xff37ecba),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 5,
              spreadRadius: -4,
              offset: Offset(0, 3),
            ),
          ],
        ),
        width: 100,
        height: 40,
        child: const Center(
          child: Text(
            'Login',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
