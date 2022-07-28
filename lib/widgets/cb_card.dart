import 'package:bank_app_example/widgets/price.dart';
import 'package:flutter/material.dart';

class CBCard extends StatefulWidget {
  final double balance;
  final int cardNumber;
  final String expDate;

  const CBCard({
    Key? key,
    required this.balance,
    required this.cardNumber,
    required this.expDate,
  }) : super(key: key);

  @override
  State<CBCard> createState() => _CBCardState();
}

class _CBCardState extends State<CBCard> {
  double _balance = 0;
  int _cardNumber = 0;
  String _expDate = '';
  @override
  void initState() {
    super.initState();
    _balance = widget.balance;
    _cardNumber = widget.cardNumber;
    _expDate = widget.expDate;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[
            Color(0xff1f005c),
            Color(0xff5b0060),
            Color(0xff870160),
            Color(0xffac255e),
            Color(0xffca485c),
            Color(0xffe16b5c),
            Color(0xfff39060),
            Color(0xffffb56b),
          ], // Gradient from https://learnui.design/tools/gradient-generator.html
          tileMode: TileMode.mirror,
        ),
      ),
      constraints: const BoxConstraints(
        minWidth: 200,
        maxWidth: 300,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Balance',
                    style: TextStyle(
                      color: Color.fromARGB(255, 180, 180, 180),
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Price(value: _balance),
                ],
              ),
              IconButton(
                onPressed: (() => print('pressed')),
                icon: const Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/visa_logo.png',
                    fit: BoxFit.fill,
                    width: 40.0,
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.black12,
                    ),
                    child: Text(
                      '****$_cardNumber',
                      style: const TextStyle(
                        color: Color.fromARGB(255, 180, 180, 180),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                _expDate,
                style: const TextStyle(
                  color: Color.fromARGB(255, 226, 226, 226),
                  fontSize: 16,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
