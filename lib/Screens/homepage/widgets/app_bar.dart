import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey.shade400),
              borderRadius: BorderRadius.circular(15)),
          child: const Icon(Icons.menu),
        ),
        const Text(
          "Creative Jobs",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            image: const DecorationImage(
                image: NetworkImage(
                    'https://e7.pngegg.com/pngimages/178/595/png-clipart-user-profile-computer-icons-login-user-avatars-monochrome-black-thumbnail.png')),
            color: Colors.grey,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ],
    );
  }
}
