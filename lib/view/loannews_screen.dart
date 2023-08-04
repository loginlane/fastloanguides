import 'package:fastloanguide/config/appcolor.dart';
import 'package:flutter/material.dart';

import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class LoanNewsScreen extends StatelessWidget {
  const LoanNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.orangeColor,
        elevation: 0,
        title: const Text("Loan Latest News"),
      ),
      body: const WebviewScaffold(
        url: 'https://economictimes.indiatimes.com/topic/india-loan',
      ),
    );
  }
}
