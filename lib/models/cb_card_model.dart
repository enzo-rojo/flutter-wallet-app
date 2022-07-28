class CBCardModel {
  double balance;
  int cardNumber;
  String expDate;

  CBCardModel({
    required this.balance,
    required this.cardNumber,
    required this.expDate,
  });

  Map<String, dynamic> toJson() => {
        'balance': balance,
        'cardNumber': cardNumber,
        'expDate': expDate,
      };
}
