import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: const [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/profil_image.jpeg'),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            "Enzors",
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 20.0,
            ),
          ),
        ],
      ),
    );
  }
}
