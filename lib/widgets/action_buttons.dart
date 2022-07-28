import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({Key? key}) : super(key: key);
  final double sizeSeparation = 10;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildIconButton(0xf408, 'Swap'),
        SizedBox(width: sizeSeparation),
        buildIconButton(0xe481, 'Payment'),
        SizedBox(width: sizeSeparation),
        buildIconButton(0xe128, 'Send'),
        SizedBox(width: sizeSeparation),
        buildIconButton(0xe12c, 'Receive'),
      ],
    );
  }

  Widget buildIconButton(int iconName, String title) => Column(
        children: [
          Center(
            child: Ink(
              decoration: const ShapeDecoration(
                shape: CircleBorder(
                  side: BorderSide(
                    color: Color.fromARGB(255, 45, 45, 45),
                  ),
                ),
                color: Color.fromARGB(255, 30, 30, 30),
              ),
              child: IconButton(
                padding: const EdgeInsets.all(15.0),
                iconSize: 30,
                onPressed: (() => print('pressed')),
                icon: Icon(
                  IconData(iconName, fontFamily: 'MaterialIcons'),
                  color: const Color.fromARGB(255, 166, 166, 166),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: const TextStyle(
              color: Color.fromARGB(255, 166, 166, 166),
            ),
          ),
        ],
      );
}
