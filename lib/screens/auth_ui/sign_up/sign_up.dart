
import 'package:e_commerce2/constants/routes.dart';
import 'package:e_commerce2/screens/home/home.dart';
import 'package:e_commerce2/widgets/primary_buttons/primary_button.dart';
import 'package:e_commerce2/widgets/top_titles/top_titles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isShowPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: TopTitles(
                    title: "Create an Account",
                    subtitle: "Welcome to E-Commerce App"),
              ),
              const SizedBox(
                height: 46.0,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Full Name",
                  prefixIcon: Icon(Icons.person_outlined),
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  hintText: "E-mail",
                  prefixIcon: Icon(Icons.email_outlined),
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  hintText: "Phone",
                  prefixIcon: Icon(Icons.phone_outlined),
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
                title: "Create an account",
                onPressed: () {
                 Routes.instance.pushAndRemoveUntil(widget: const Home(), context: context);
                },
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Center(
                child: Text("I have already an account?"),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Center(
                child: CupertinoButton(
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Colors.green),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
