import 'package:flutter/material.dart';

class AddNew_Account extends StatefulWidget {
  const AddNew_Account({super.key});

  @override
  State<AddNew_Account> createState() => _AddNew_AccountState();
}

class _AddNew_AccountState extends State<AddNew_Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Account"),
      ),
    );
  }
}
