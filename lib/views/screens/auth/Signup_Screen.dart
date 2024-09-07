import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:tiktok/constants.dart';
import 'package:tiktok/views/widgets/input_field.dart';

class SignupScreen extends StatelessWidget {
  final TextEditingController _emailcotroller = TextEditingController();
  final TextEditingController _usercotroller = TextEditingController();
  final TextEditingController _passwordcotroller = TextEditingController();

  SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Tiktok Clone",
            style: TextStyle(
                fontSize: 35, color: buttonColor, fontWeight: FontWeight.w900),
          ),
          const Text("Register",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700)),
          const SizedBox(height: 05),
          Stack(
            children: [
              CircleAvatar(
                radius: 67,
                backgroundColor: Colors.red,
                child: CircleAvatar(
                  backgroundImage:
                      AssetImage("Assests/Images/profile-user.png"),
                  radius: 64,
                  backgroundColor: Colors.white,
                ),
              ),
              Positioned(
                  bottom: -10,
                  left: 80,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add_a_photo_sharp,
                        color: Colors.white,
                        
                      )))
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: TextInputField(
                controller: _usercotroller,
                labelText: "Username",
                icon: Icons.person),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: TextInputField(
                controller: _emailcotroller,
                labelText: "Email",
                icon: Icons.email),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: TextInputField(
              controller: _passwordcotroller,
              labelText: "Password",
              icon: Icons.password,
              isObscure: true,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              print("Tapped");
            },
            child: Container(
                width: MediaQuery.of(context).size.width - 40,
                height: 50,
                decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: const Center(
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                )),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account? ",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  "Login Here",
                  style: TextStyle(color: buttonColor, fontSize: 20),
                ),
              )
            ],
          )
        ],
      ),
    ));
    ;
  }
}
