import 'package:e_commerce2/constants/routes.dart';
import 'package:e_commerce2/screens/auth_ui/login/login.dart';
import 'package:e_commerce2/widgets/primary_buttons/primary_button.dart';
import 'package:e_commerce2/widgets/top_titles/top_titles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TopTitles(
              title: "Welcome to BOLLO!", subtitle: "Buy any item from using app"),
          Center(
            child: Image.asset(
              "assets/images/grocery_app.png",
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                child: const Icon(
                  Icons.facebook,
                  size: 35,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              CupertinoButton(
                onPressed: () {},
                child: Image.asset(
                  "assets/images/googlelogo.png",
                  scale: 30.0,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 30.0,
          ),
          PrimaryButton(
            title: "Login",
            onPressed: () {
              Routes.instance.push(widget: const Login(), context: context);
            },
          ),
          const SizedBox(
            height: 18.0,
          ),
          PrimaryButton(
            title: "Sign Up",
            onPressed: () {},
          ),
        ],
      ),
    ));
  }
}
