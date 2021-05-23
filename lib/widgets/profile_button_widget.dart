import 'package:flutter/material.dart';

class ProfileButtonWidget extends StatelessWidget {
  const ProfileButtonWidget({
    Key? key,
    required this.profileUrl,
    this.onPressed,
  }) : super(key: key);

  final String profileUrl;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateColor.resolveWith(
            (states) => Theme.of(context).primaryColor),
        elevation: MaterialStateProperty.all(0.0),
        padding: MaterialStateProperty.all(EdgeInsets.zero),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Container(
        height: 30.0,
        width: 30.0,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          image: DecorationImage(
            image: NetworkImage(profileUrl),
          ),
        ),
      ),
    );
  }
}
