import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "hello".tr().toString(),
            ),
            Text(
              'text1'.tr().toString(),
            ),
            ElevatedButton(
              onPressed: () async {
                context.setLocale(Locale('en', 'US'));
              },
              child: Text('Switch to En - US'),
            ),
            ElevatedButton(
              onPressed: () async {
                context.setLocale(Locale('en', 'UZ'));
              },
              child: Text('Switch to En - UZ'),
            ),
          ],
        ),
      ),
    );
  }
}
