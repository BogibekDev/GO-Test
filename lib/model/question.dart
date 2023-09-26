class Question {
  String question;
  List<Answer> answers;

  Question({required this.question, required this.answers});
}

class Answer {
  String answer;
  bool isSelected;
  List<int>? category;

  Answer({required this.answer, this.isSelected = false, this.category});
}

/*
*
*   1 -> Frontend
*   2 -> Backend
*   3 -> Mobile
*   4 -> SMM
*   5 -> Graphic design
*   6 -> Video Editing
*   7 -> Mobilogrof
*   8 -> Arxitektura
*   9 -> Buxgalteriya
*  10 -> Office
*  11 -> Mobile o'yin yaratish
*
* */
