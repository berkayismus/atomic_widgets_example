import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: CircularProgressIndicator(
          color: Colors.white,
        ),
      ),
    );
  }
}
