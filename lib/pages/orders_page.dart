import 'package:flutter/material.dart';
import 'package:redexpress/extensions/widget_extension.dart';

import '../widgets/order_card.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 15,
          ),
          child: Text(
            'Заказы',
            style: Theme.of(context).textTheme.headlineLarge,
          ).paddingHorizontal(),
        ),
        const SizedBox(height: 15),
        const OrderCard(
          orderId: '12345',
          destination: 'Бишкек > Алматы',
          status: 'Готово к выдаче',
          price: '150.00 с',
        ).paddingHorizontal(),
        const SizedBox(height: 10.0),
        const OrderCard(
          orderId: '67890',
          destination: 'Чолпон-Ата > Каракол',
          status: 'Готово к выдаче',
          price: '200.00 с',
        ).paddingHorizontal(),
        const SizedBox(height: 10.0),
      ],
    );
  }
}
