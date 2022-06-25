import 'package:flutter/material.dart';

import '../../constanins.dart';

class BatteryStatus extends StatelessWidget {
  const BatteryStatus({
    Key? key,
    required this.constrains,
  }) : super(key: key);

  final BoxConstraints constrains;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: constrains.maxHeight * 0.01),
        Text(
          "220 mi",
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: Colors.white),
        ),
        Text(
          "62%",
          style: TextStyle(fontSize: 24),
        ),
        Spacer(),
        Text(
          "CHARGING",
          style: TextStyle(fontSize: 20),
        ),
        Text(
          "18 min remaining",
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: constrains.maxHeight * 0.16),
        DefaultTextStyle(
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: defaultPadding),
                child: Text("22 mi/hr"),
              ),
              Padding(
                padding: const EdgeInsets.only(right: defaultPadding),
                child: Text("232 v"),
              ),
            ],
          ),
        ),
        SizedBox(height: defaultPadding),
      ],
    );
  }
}
