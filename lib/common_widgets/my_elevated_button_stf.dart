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
  // TODO: 1 - isLoading adında boolean bir değişken oluşturun

  // TODO: 2 - changeLoading adında isloading değişkenini değiştirmekten sorumlu bir fonksiyon oluşturun

  // TODO: 3 - afterOnPressed adında Future<void> döndüren bir fonksiyon oluşturun

  @override
  Widget build(BuildContext context) {
    return MyElevatedButton(
      // TODO: 4 - isLoading = true ise null, değilse afterOnPressed metodunu çağırın
      onPressed: widget.onPressed,
      // TODO: 5 - isLoading = true ise CircularProgressIndicator değilse, widget.child gösterin
      child: widget.child,
    );
  }
}
