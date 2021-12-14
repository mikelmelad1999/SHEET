import 'dart:io';
void main(List<String> arguments) {
  int score = 0;
  List<question> questions = [
    question(
        point: 1,
        Question: ' what is the name of the course ',
        answers: ['flutter','android','mac']) ,
    question(
        point: 3,
        Question: 'which programming language we use in this course',
        answers: ['dart','java','c++','c']),
    question(
        point: 4,
        Question: 'what is the time for this course',
        answers: ['4 weeks','3 weeks','5 weeks','6 weeks '])
  ];
  for(question q in questions) {
    print(q.Question +"\n");
    for (int i = 0; i < q.answers.length; i++) {
      print("(${i+1}) "+ q.answers[i]);
                                               }

    String ?choice =  stdin.readLineSync();
    if(choice=="") {print("that is empty answer ,please enter correct answer");
    continue;
    }
    else {
     String user_choice=q.answers[int.parse(choice!)-1];
   if (user_choice==q.right_answer){
    score+=q.point;
     print ("correct,you gained ${q.point} points , now your score is $score");
   }
   else {
     score-=q.point;

     print ("oops ,you lost ${q.point} points , now your score is $score");

   }


    }
  }
  print("your total score is $score");
}

class question {
  late int point;
  late String Question;
  late List<String> answers;
  late String right_answer;
  question(
      {required this.point,
      required this.Question,
      required this.answers}) {
    right_answer = answers[0];
    answers.shuffle();
  }
}
