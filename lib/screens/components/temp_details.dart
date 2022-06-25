import 'package:flutter/material.dart';

import '../../constanins.dart';
import '../../home_controller.dart';
import 'temp_btn.dart';

class TempDetails extends StatefulWidget {
  const TempDetails({
    Key? key,
    required HomeController controller,
  })  : _controller = controller,
        super(key: key);

  final HomeController _controller;

  @override
  State<TempDetails> createState() => _TempDetailsState();
}

class _TempDetailsState extends State<TempDetails> {
  int tempr = 25;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: defaultPadding),
          SizedBox(
            height: 150,
            child: Row(
              children: [
                TempBtn(
                  isActive: widget._controller.isCoolSelected,
                  svgSrc: "assets/icons/coolShape.svg",
                  title: "Cool",
                  press: () {
                    widget._controller.updateCoolSelectedTab();
                    tempr = 25;
                  },
                ),
                const SizedBox(width: defaultPadding),
                TempBtn(
                  isActive: !widget._controller.isCoolSelected,
                  svgSrc: "assets/icons/heatShape.svg",
                  title: "Heat",
                  activeColor: redColor,
                  press: () {
                    widget._controller.updateCoolSelectedTab();
                    tempr = 26;
                  },
                ),
              ],
            ),
          ),
          Spacer(),
          Column(
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  setState(() {
                    tempr += 1;
                    if (tempr > 25) {
                      widget._controller.setCoolActiveOrNot(false);
                    }
                  });
                },
                icon: Icon(
                  Icons.arrow_drop_up,
                  size: 48,
                ),
              ),
              Text(
                tempr.toString() + "\u2103",
                style: TextStyle(fontSize: 86),
              ),
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  setState(() {
                    tempr -= 1;
                    if (tempr <= 25) {
                      widget._controller.setCoolActiveOrNot(true);
                    }
                  });
                },
                icon: Icon(
                  Icons.arrow_drop_down,
                  size: 48,
                ),
              ),
            ],
          ),
          Spacer(),
          Spacer(),
          Text("CURRENT TEMPERATURE"),
          const SizedBox(height: defaultPadding),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Inside".toUpperCase(),
                  ),
                  Text(
                    "20" + "\u2103",
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ],
              ),
              const SizedBox(width: defaultPadding),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Outside".toUpperCase(),
                    style: TextStyle(color: Colors.white54),
                  ),
                  Text(
                    "35" + "\u2103",
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(color: Colors.white54),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
