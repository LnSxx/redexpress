import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:redexpress/extensions/widget_extension.dart';
import 'package:timeline_tile/timeline_tile.dart';

class OrderDetailsPage extends StatelessWidget {
  final String orderId;
  final String destination;
  final String status;
  final String price;

  const OrderDetailsPage({
    super.key,
    required this.orderId,
    required this.destination,
    required this.status,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Детали заказа',
        ),
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFFF93A3A),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
            ),
            child: Text(
              'Заказ № $orderId',
              style: Theme.of(context).textTheme.headlineLarge,
            ).paddingHorizontal(),
          ),
          Text(
            destination,
            style: TextStyle(
              fontSize: 16.0,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ).paddingHorizontal(),
          Row(
            children: [
              Container(
                height: 5,
                width: 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                status,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ],
          ).paddingHorizontal(),
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
            ),
            child: Text(
              'История',
              style: Theme.of(context).textTheme.headlineSmall,
            ).paddingHorizontal(),
          ),
          TimelineTile(
            indicatorStyle: const IndicatorStyle(
              width: 10,
              color: Colors.green,
              padding: EdgeInsets.all(2),
            ),
            isFirst: true,
            endChild: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text('Принят в доставку'),
                  Spacer(),
                  Text(
                    '12.12.2023',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            afterLineStyle: LineStyle(color: Colors.green.withOpacity(0.3)),
          ).paddingHorizontal().paddingTop(),
          TimelineTile(
            indicatorStyle: const IndicatorStyle(
              width: 10,
              color: Colors.green,
              padding: EdgeInsets.all(2),
            ),
            endChild: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text('Отгружен в СЦ'),
                  Spacer(),
                  Text(
                    '13.12.2023',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            beforeLineStyle: LineStyle(color: Colors.green.withOpacity(0.3)),
            afterLineStyle: LineStyle(color: Colors.green.withOpacity(0.3)),
          ).paddingHorizontal(),
          TimelineTile(
            indicatorStyle: const IndicatorStyle(
              width: 10,
              color: Colors.green,
              padding: EdgeInsets.all(2),
            ),
            endChild: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text('Покинул СЦ'),
                  Spacer(),
                  Text(
                    '14.12.2023',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            beforeLineStyle: LineStyle(color: Colors.green.withOpacity(0.3)),
            afterLineStyle: LineStyle(color: Colors.green.withOpacity(0.3)),
          ).paddingHorizontal(),
          TimelineTile(
            indicatorStyle: const IndicatorStyle(
              width: 10,
              color: Colors.green,
              padding: EdgeInsets.all(2),
            ),
            endChild: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text('Прибыл в СЦ'),
                  Spacer(),
                  Text(
                    '15.12.2023',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            beforeLineStyle: LineStyle(color: Colors.green.withOpacity(0.3)),
            afterLineStyle: LineStyle(color: Colors.green.withOpacity(0.3)),
          ).paddingHorizontal(),
          TimelineTile(
            indicatorStyle: const IndicatorStyle(
              width: 10,
              color: Colors.green,
              padding: EdgeInsets.all(2),
            ),
            endChild: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text('Передан в доставку'),
                  Spacer(),
                  Text(
                    '16.12.2023',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            beforeLineStyle: LineStyle(color: Colors.green.withOpacity(0.3)),
            afterLineStyle: LineStyle(color: Colors.green.withOpacity(0.3)),
          ).paddingHorizontal(),
          TimelineTile(
            indicatorStyle: const IndicatorStyle(
              width: 10,
              color: Colors.green,
              padding: EdgeInsets.all(2),
            ),
            endChild: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text('Принят в СЦ'),
                  Spacer(),
                  Text(
                    '17.12.2023',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            beforeLineStyle: LineStyle(color: Colors.green.withOpacity(0.3)),
            afterLineStyle: LineStyle(color: Colors.green.withOpacity(0.3)),
          ).paddingHorizontal(),
          TimelineTile(
            indicatorStyle: const IndicatorStyle(
              width: 10,
              color: Colors.green,
              padding: EdgeInsets.all(2),
            ),
            isLast: true,
            endChild: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text('Готов к выдаче'),
                  Spacer(),
                  Text(
                    '18.12.2023',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            beforeLineStyle: LineStyle(color: Colors.green.withOpacity(0.3)),
          ).paddingHorizontal(),
          SvgPicture.asset('images/barcode.svg'),
        ],
      ),
    );
  }
}
