import 'package:flutter/material.dart';
import 'package:redexpress/extensions/widget_extension.dart';

import 'home_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'images/appbar.png',
          height: 40,
          color: Colors.white,
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFFF93A3A),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
            ),
            child: Text(
              'Авторизация',
              style: Theme.of(context).textTheme.headlineLarge,
            ).paddingHorizontal(),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Логин',
                hintText: 'Введите ваш логин',
                contentPadding: const EdgeInsets.only(left: 15, right: 15),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100.0),
                ),
              ),
            ).paddingHorizontal(),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
            ),
            child: TextFormField(
              style: Theme.of(context).textTheme.bodyMedium,
              decoration: InputDecoration(
                labelText: 'Пароль',
                hintText: 'Введите ваш пароль',
                contentPadding: const EdgeInsets.only(left: 15, right: 15),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100.0),
                ),
              ),
              obscureText: true,
            ).paddingHorizontal(),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              child: const Text("Войти"),
            ).paddingHorizontal(),
          ),
        ],
      ),
    );
  }
}
