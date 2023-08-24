
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Label extends StatefulWidget {
  const Label({Key? key, required this.state}) : super(key: key);
  final String state;

  @override
  State<Label> createState() => _LabelState();
}
bool eye = true;
final TextEditingController pass = TextEditingController();
final TextEditingController email = TextEditingController();

class _LabelState extends State<Label> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          widget.state.toUpperCase(),
          style: const TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w500,
            color: Color(0xff37ecba),
          ),
        ),
        const SizedBox(height: 25),
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 15,
                spreadRadius: -14,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: TextFormField(
            controller: email,
            validator: (val) {
              Pattern pattern =
                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
              RegExp regex = RegExp(pattern.toString());
              if (val!.isEmpty) {
                return 'Email can\'t be empty';
              } else if (!regex.hasMatch(val)) {
                return 'Enter valid email address';
              } else {
                return null;
              }
            },
            autofocus: true,
            cursorColor: const Color(0xff37ecba),
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              labelText: 'Email Address',
              contentPadding: EdgeInsets.only(left: 10),
              prefixIcon: Icon(
                Icons.email_outlined,
                color: Color(0xff37ecba),
              ),
              border: InputBorder.none,
              labelStyle: TextStyle(
                color: Colors.grey,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        const SizedBox(height: 25),
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 15,
                spreadRadius: -14,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: TextFormField(
            controller: pass,
            cursorColor: const Color(0xff37ecba),
            obscureText: eye,
            validator: (val) {
              if (val!.length < 8) {
                return "Password Can't be less than 8 letters";
              }
            },
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: 'password',
              contentPadding: EdgeInsets.only(left: 10),
              prefixIcon: Icon(
                Icons.lock_outline,
                color: Color(0xff37ecba),
              ),
              suffixIcon: IconButton(
                color: Color(0xff37ecba),
                onPressed: () {
                  eye = !eye;
                  setState(() {});
                },
                icon: Icon(Icons.remove_red_eye_rounded),
              ),
              labelStyle: TextStyle(
                color: Colors.grey,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        const SizedBox(height: 25),
      ],
    );
  }


}