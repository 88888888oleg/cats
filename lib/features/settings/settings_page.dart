import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);
  static route() {

    return MaterialPageRoute(
      builder: (context) {
        return const HistoryPage();
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
