import 'package:flutter/material.dart';
import 'package:tiktok/constants.dart';
import 'package:tiktok/views/widgets/input_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();

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
          SizedBox(
            height: 30,
          ),
          const Text("Login",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700)),
          const SizedBox(height: 25),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: TextInputField(
                controller: _emailcontroller,
                labelText: "Email",
                icon: Icons.email),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: TextInputField(
              controller: _passwordcontroller,
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
                "Dont\'t have an account?",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  "Regester Here",
                  style: TextStyle(color: buttonColor, fontSize: 20),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
