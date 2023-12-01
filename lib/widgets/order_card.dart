import 'package:flutter/material.dart';
import 'package:redexpress/pages/order_details_page.dart';

class OrderCard extends StatelessWidget {
  final String orderId;
  final String destination;
  final String status;
  final String price;

  const OrderCard({
    super.key,
    required this.orderId,
    required this.destination,
    required this.status,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) {
              return OrderDetailsPage(
                orderId: orderId,
                destination: destination,
                status: status,
                price: price,
              );
            },
          ),
        );
      },
      child: Card(
        elevation: 4.0,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'ID: $orderId',
                style: const TextStyle(
                    fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                destination,
                style: const TextStyle(fontSize: 16.0),
              ),
              Text(
                status,
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor),
              ),
              Text(
                'Цена: $price',
                style: const TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
