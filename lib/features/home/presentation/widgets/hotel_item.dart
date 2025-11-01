import 'package:flutter/material.dart';

import '../../../../core/widget/text_widget.dart';

class HotelItem extends StatelessWidget {
  const HotelItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        spacing: 6,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Image.asset(
              'asset/hotel.jpeg',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          const TextWidget(
            'Hotel name',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const Row(
            spacing: 8,
            children: <Widget>[
              Icon(Icons.location_on_outlined),
              Expanded(
                child: TextWidget(
                  'Location',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          const Row(
            spacing: 8,
            children: <Widget>[
              TextWidget('2,100', maxLines: 1, overflow: TextOverflow.ellipsis),
              TextWidget(
                '2600',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                decoration: TextDecoration.lineThrough,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
