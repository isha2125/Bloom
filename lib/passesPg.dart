import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Passes extends StatefulWidget {
  const Passes({super.key});

  @override
  State<Passes> createState() => _PassesState();
}

class _PassesState extends State<Passes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("passes"),
    );
  }
}
