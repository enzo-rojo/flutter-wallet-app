import 'package:bank_app_example/models/friend_model.dart';
import 'package:flutter/material.dart';

class QuickSend extends StatefulWidget {
  final List<FriendModel> friendList;

  const QuickSend({Key? key, required this.friendList}) : super(key: key);

  @override
  State<QuickSend> createState() => _QuickSendState();
}

class _QuickSendState extends State<QuickSend> {
  final Color _greyColor = const Color.fromARGB(255, 166, 166, 166);
  List<FriendModel> _list = <FriendModel>[];
  @override
  void initState() {
    super.initState();
    _list = widget.friendList;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Quick Send',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w300,
              ),
            ),
            TextButton(
              onPressed: () => print('pressed'),
              child: const Text('See All'),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 100,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: _list.length,
            separatorBuilder: ((context, index) => const SizedBox(width: 25)),
            itemBuilder: (context, i) {
              // if (index.isOdd) return const SizedBox(width: 20);

              return buildAvatarIconButton(_list[i].pathAvatar, _list[i].name);
            },
          ),
        )
      ],
    );
  }

  Widget buildAvatarIconButton(String pathAvatar, String name) => Column(
        children: [
          RawMaterialButton(
            onPressed: () => print('pressed'),
            padding: const EdgeInsets.all(5),
            shape: const CircleBorder(),
            child: CircleAvatar(
              radius: 32,
              backgroundColor: const Color.fromARGB(255, 82, 82, 82),
              child: CircleAvatar(
                backgroundImage: AssetImage(pathAvatar),
                radius: 30,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: TextStyle(
              color: _greyColor,
            ),
          ),
        ],
      );
}
