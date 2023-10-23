
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 225, 225, 225), // Arka plan rengini gri olarak ayarlayın
              child: Center(
                child: Column(
                  children: [
                    const Icon(
                      Icons.person_outline,
                      size: 120,
                    ),
                    const Text(
                      "NazReen",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "nazrinbabayeva03@gmail.com",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    SizedBox(
                      width: 130,
                      child: CupertinoButton(
                        child: const Text(
                          "Edit Profile",
                          style: TextStyle(color: Colors.green),
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              flex: 2,
              child: Column(
                children: [
                  ListTile(
                    onTap: () {},
                    leading: const Icon(Icons.shopping_bag_outlined),
                    title: const Text("Your Orders"),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(Icons.favorite_outline),
                    title: const Text("Favourite"),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(Icons.info_outline),
                    title: const Text("About Us"),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(Icons.support_agent_outlined),
                    title: const Text("Support "),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(Icons.exit_to_app),
                    title: const Text("Log out"),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text("Version 1.0.0")
                ],
              ))
        ],
      ),
    );
  }
}