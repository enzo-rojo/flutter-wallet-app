import 'package:bank_app_example/models/cb_card_model.dart';
import 'package:bank_app_example/models/friend_model.dart';
import 'package:bank_app_example/widgets/action_buttons.dart';
import 'package:bank_app_example/widgets/cb_card.dart';
import 'package:bank_app_example/widgets/price.dart';
import 'package:bank_app_example/widgets/profile_avatar.dart';
import 'package:bank_app_example/widgets/quick_send.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double sizeSeparation = 25;
  List<CBCardModel> cardList = <CBCardModel>[
    CBCardModel(balance: 7230.12, cardNumber: 4567, expDate: '02/25'),
    CBCardModel(balance: 5700.24, cardNumber: 1234, expDate: '05/23'),
    CBCardModel(balance: 3000.24, cardNumber: 7891, expDate: '08/24')
  ];

  List<FriendModel> friendList = <FriendModel>[
    FriendModel(name: 'Olivia', pathAvatar: 'assets/images/friend_1.jpeg'),
    FriendModel(name: 'Liam', pathAvatar: 'assets/images/friend_2.jpg'),
    FriendModel(name: 'Sophia', pathAvatar: 'assets/images/friend_3.jpg'),
    FriendModel(name: 'James', pathAvatar: 'assets/images/friend_4.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const ProfileAvatar(),
        titleSpacing: 0,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Total Balance',
                  style: TextStyle(color: Color.fromARGB(255, 120, 120, 120)),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Price(value: 98578.46, size: 1),
                SizedBox(
                  height: sizeSeparation,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Card',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 22.0,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: (() => print("pressed")),
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        minimumSize: MaterialStateProperty.all(
                          const Size(70.0, 35.0),
                        ),
                      ),
                      child: const Icon(
                        Icons.add,
                        size: 15.0,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: sizeSeparation,
                ),
                SizedBox(
                  height: 200,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: cardList.length,
                    separatorBuilder: ((context, index) =>
                        const SizedBox(width: 25)),
                    itemBuilder: (context, i) {
                      // if (index.isOdd) return const SizedBox(width: 20);

                      return CBCard(
                        balance: cardList[i].balance,
                        cardNumber: cardList[i].cardNumber,
                        expDate: cardList[i].expDate,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: sizeSeparation,
                ),
                const ActionButtons(),
                SizedBox(
                  height: sizeSeparation,
                ),
                QuickSend(friendList: friendList),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
