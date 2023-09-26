import 'package:flutter/material.dart';


import '../model/result.dart';
import '../utils/assets.dart';
import '../utils/consts.dart';
import '../utils/res_colors.dart';
import '../widgets/item_result.dart';

class ResultScreen extends StatefulWidget {
  final Map<dynamic, dynamic> result;
  final String name;

  const ResultScreen({super.key, required this.result, required this.name});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ResColors.mainColor2,
        automaticallyImplyLeading: false,
        title: Text(
          widget.name,
          style: const TextStyle(color: ResColors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.testBg),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: items(),
          ),
        ),
      ),
    );
  }

  List<Widget> items() {
    List<Widget> list = [];

    widget.result.forEach((key, value) {
      list.add(
        ItemResult(
          Result(
            category: Constants.categories[key]!,
            percentage: value,
            image: Assets.splashBg,
          ),
        ),
      );
    });

    return list;
  }
}
