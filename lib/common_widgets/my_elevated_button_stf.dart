import 'package:atomic_widgets_example/common_widgets/my_elevated_button.dart';
import 'package:flutter/material.dart';

class MyElevatedButtonStf extends StatefulWidget {
  const MyElevatedButtonStf({super.key, this.onPressed, this.child});

  final Future<void> Function()? onPressed;
  final Widget? child;

  @override
  State<MyElevatedButtonStf> createState() => _MyElevatedButtonStfState();
}

class _MyElevatedButtonStfState extends State<MyElevatedButtonStf> {
  bool _isLoading = false;

  Future<void> _delayAfterOnPressed() async {
    setState(() {
      _isLoading = true;
    });
    await widget.onPressed?.call();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MyElevatedButton(
      onPressed: _isLoading ? null : _delayAfterOnPressed,
      child: _isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            )
          : widget.child,
    );
  }
}
