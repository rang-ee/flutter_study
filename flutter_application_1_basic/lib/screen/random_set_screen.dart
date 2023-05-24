import "package:flutter/material.dart";

class Settings extends StatefulWidget {
  final int maxNumber;
  const Settings({required this.maxNumber, Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  double maxNumber = 1000;

  @override
  void initState() {
    super.initState();

    maxNumber = widget.maxNumber.toDouble();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
