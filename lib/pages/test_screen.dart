import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../model/question.dart';
import '../utils/assets.dart';
import '../utils/consts.dart';
import '../utils/res_colors.dart';
import '../widgets/item_answer.dart';
import 'result_screeen.dart';

class TestScreen extends StatefulWidget {
  final String name;

  const TestScreen({super.key, required this.name});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  var myResult = {};
  late int count;
  late int all;
  var _percent = 1 / 16;
  var _maxPercent = 93;
  var _selectedIndex = 0;
  final List<int> _selectedCategory = [];

  Map<int, int> results = {};

  List<Question> questions = Constants.loadQuestions();

  @override
  void initState() {
    count = 1;
    all = questions.length;
    _maxPercent = Random().nextInt(94 - 81) + 81;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ResColors.mainColor2,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.chevron_left,
            color: ResColors.white,
          ),
        ),
        backgroundColor: ResColors.mainColor2,
        title: Image(
          height: 19.h,
          image: const AssetImage(Assets.icLogo3),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 36.sp),
            Stack(
              children: [
                Container(
                  margin:
                      EdgeInsets.only(top: 42.sp, left: 30.sp, right: 30.sp),
                  padding: EdgeInsets.symmetric(horizontal: 10.sp),
                  width: MediaQuery.sizeOf(context).width,
                  //height: 150.sp,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.sp),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.1),
                        blurRadius: 10,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 53.sp),
                      Text(
                        'Question $count/$all',
                        style: TextStyle(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 10.sp),
                      Text(
                        questions[count - 1].question,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10.sp),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    width: 85.sp,
                    height: 85.sp,
                    decoration: BoxDecoration(
                      color: ResColors.testCountBg,
                      borderRadius: BorderRadius.circular(40.sp),
                    ),
                    child: CircularPercentIndicator(
                      radius: 40.sp,
                      lineWidth: 6.sp,
                      percent: _percent,
                      progressColor: ResColors.mainColor,
                      backgroundColor: Colors.transparent,
                      circularStrokeCap: CircularStrokeCap.round,
                      center: Text(
                        '$count',
                        style: TextStyle(
                            color: ResColors.black,
                            fontSize: 32.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: items(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (count != all) {
            if (checkSelection()) {
              _selectedCategory.addAll(questions[count - 1]
                  .answers[_selectedIndex]
                  .category as Iterable<int>);
              _selectedCategory.add(0);
              setState(() {
                count++;
                _percent = count / all;
              });
            } else {
              //show dialog for must select
            }
          } else {
            checkAnswers();
          }
        },
        backgroundColor: ResColors.mainColor,
        foregroundColor: ResColors.white,
        child: Icon(Icons.chevron_right, size: 28.sp),
      ),
    );
  }

  void checkAnswers() {
    addSelectedCategories();

    var sortedByValueMap = Map.fromEntries(results.entries.toList()
      ..sort((e1, e2) => e2.value.compareTo(e1.value)));

    int myMax = 0;
    sortedByValueMap.forEach((key, value) {
      if (value > myMax) myMax = value;
    });

    sortedByValueMap.forEach((key, value) {
      myResult[key] = sortedByValueMap[key]! / myMax;
    });

    myResult.forEach((key, value) {
      myResult[key] = myResult[key] * _maxPercent;
    });

    myResult.forEach((key, value) {
      myResult[key] = myResult[key] ~/ 1;
    });

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultScreen(
          result: myResult,
          name: widget.name,
        ),
      ),
    );
  }

  List<Widget> items() {
    List<Widget> list = [];
    Question question = questions[count - 1];
    for (int i = 0; i < question.answers.length; i++) {
      list.add(
        ItemAnswer(
          question.answers[i],
          onTap: () {
            _selectedIndex = i;
            disableAllAnswers();
            setState(() {
              question.answers[i].isSelected = !question.answers[i].isSelected;
            });
          },
        ),
      );
    }
    return list;
  }

  void disableAllAnswers() {
    for (var element in questions[count - 1].answers) {
      setState(() {
        element.isSelected = false;
      });
    }
  }

  bool checkSelection() {
    bool isSelected = false;
    for (var answer in questions[count - 1].answers) {
      if (answer.isSelected) {
        isSelected = true;
        break;
      }
    }
    return isSelected;
  }

  void addSelectedCategories() {
    for (var element in _selectedCategory) {
      if (!results.keys.contains(element)) {
        results[element] = 1;
      } else {
        results[element] = results[element]! + 1;
      }
    }
    results.remove(0);
  }
}
