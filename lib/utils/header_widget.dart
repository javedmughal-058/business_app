import 'package:business_app/constant/helper.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final String name;
  final String id;
  final String shop;

  const HeaderWidget({super.key, required this.name, required this.id, required this.shop});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(name,style: Theme.of(context).textTheme.bodyMedium),
            Text(id,style: Theme.of(context).textTheme.bodyMedium),
            Text(shop,style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        Helper.sized(),
        SizedBox(
            height: 20,
            width: size.width*0.9,
            child: Divider(color: Theme.of(context).secondaryHeaderColor, thickness: 0.5)),
      ],
    );
  }
}
