import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Price extends StatefulWidget {
  final double value;
  int? size;
  Price({Key? key, required this.value, this.size}) : super(key: key);

  @override
  State<Price> createState() => _PriceState();
}

class _PriceState extends State<Price> {
  int? _size;
  late double fs;
  @override
  void initState() {
    super.initState();
    _size = widget.size;
    fs = (_size == 1) ? 30.0 : 20.0;
  }

  String formatPrice(price) {
    final formatCurrency = NumberFormat.simpleCurrency();

    return formatCurrency.format(price);
  }

  @override
  Widget build(BuildContext context) {
    return Text(formatPrice(widget.value),
        style: TextStyle(fontSize: fs, fontWeight: FontWeight.w400));
  }
}
