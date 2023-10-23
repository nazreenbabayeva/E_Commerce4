import 'package:e_commerce2/screens/auth_ui/sign_up/sign_up.dart';
import 'package:e_commerce2/widgets/primary_buttons/primary_button.dart';
import 'package:e_commerce2/widgets/top_titles/top_titles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/routes.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isShowPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: TopTitles(
                  title: "Login", subtitle: "Welcome to E-Commerce App"),
            ),
            const SizedBox(
              height: 46.0,
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "E-mail",
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            TextFormField(
              obscureText: !isShowPassword,
              decoration: InputDecoration(
                hintText: "Password",
                prefixIcon: const Icon(Icons.password_sharp),
                suffixIcon: CupertinoButton(
                  onPressed: () {
                    setState(() {
                      isShowPassword = !isShowPassword;
                    });
                  },
                  padding: EdgeInsets.zero,
                  child: Icon(
                    isShowPassword ? Icons.visibility : Icons.visibility_off,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            PrimaryButton(
              title: "Login",
              onPressed: () {},
            ),
            const SizedBox(
              height: 30.0,
            ),
            const Center(
              child: Text("Don't have an account?"),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Center(
              child: CupertinoButton(
                  child: const Text(
                    'Create an account',
                    style: TextStyle(color: Colors.green),
                  ),
                  onPressed: () {
                    Routes.instance
                        .push(widget: const SignUp(), context: context);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
