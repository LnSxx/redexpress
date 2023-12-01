import 'package:flutter/material.dart';
import 'package:redexpress/extensions/widget_extension.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CircleAvatar(
          radius: 50.0,
          child: ClipOval(
            child: Image.asset('images/avatar.png'),
          ),
        ).paddingTop(),
        const SizedBox(height: 15.0),
        const Text(
          'Азамат Ибраимов',
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        ).paddingHorizontal(),
        const SizedBox(height: 8.0),
        const Text(
          'Email: example@example.com',
          style: TextStyle(fontSize: 16.0),
        ).paddingHorizontal(),
        const SizedBox(height: 8.0),
        const Text(
          'Номер: +996 000 000 000',
          style: TextStyle(fontSize: 16.0),
        ).paddingHorizontal(),
        const SizedBox(height: 16.0),
        const Divider(),
        const SizedBox(height: 16.0),
        const Text(
          'Баланс:',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ).paddingHorizontal(),
        const SizedBox(height: 8.0),
        Text(
          '15000.00 c',
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: Colors.green,
              ),
        ).paddingHorizontal(),
        const SizedBox(height: 16.0),
        const Divider(),
        const SizedBox(height: 16.0),
        const Text(
          'Настройки:',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ).paddingHorizontal(),
        const SizedBox(height: 8.0),
        const ListTile(
          leading: Icon(Icons.notifications),
          title: Text('Уведомления'),
        ),
        const ListTile(
          leading: Icon(Icons.security),
          title: Text('Безопасность'),
        ),
      ],
    );
  }
}
