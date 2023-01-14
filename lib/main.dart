import 'package:flutter/material.dart';
import 'package:multiwebview/constant.dart';
import 'package:multiwebview/home_view.dart';
import 'package:multiwebview/splash_view.dart';
import 'package:multiwebview/tab_amount_controller.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  firstLaunch = false;
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<TabAmountController>(
        create: (_) => TabAmountController(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeView(),
    );
  }
}
