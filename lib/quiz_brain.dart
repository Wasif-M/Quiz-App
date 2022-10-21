import 'questions.dart';

class QuizBrain {
  int _questionNumber=0;
  List<Questions> _questionBank = [
    Questions(q: 'PM of Pakistan is Imran Khan', a: true),
    Questions(q: '2014 T20 world cup won by Pakistan',a:false ),
    Questions(q: 'Ameer Muawayia was the son of Abu Talib',a:false ),
    Questions(q: 'The author of book "Hujatul islam" is Al Ghazali',a: true),
    Questions(q: 'K2 located in Himalaya', a: false),
    Questions(q: 'Pisa Tower is present in Italy',a:true ),
    Questions(q: '59 percent Pakistan’s population is literate', a: true),
    Questions(q: 'Pakistan doesn\'t have Capital', a: false),
    Questions(q: 'Law of inheritance revealed in Four Hijri ',a:true ),
    Questions(q: 'Asia has second most countries',a:true ),
    Questions(q: 'National animal of New Zealand is Lion ',a:false ),

    Questions(
        q: 'In 1947 india became the worlds largest democracy when it won its independence',
        a: false),
    Questions(q: 'Boris Yeltsin was the President of Russia',a:true ),
    Questions(q: 'Pakistan faced sanction under the pressler amendment\'s in 1992 by the USA',a:true ),
    Questions(q: 'Pakistan foreigon policey divided in Four phases ',a:false ),
    Questions(q: 'March 1 celebrated as Zero Discrimination Day ',a: true),
  ];
  void nextQuestion(){
    if (_questionNumber<_questionBank.length-1)
      _questionNumber++;
  }
  String getQuestionText(){
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer(){
    return _questionBank[_questionNumber].answers;
  }
  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }
  void reset() {
    _questionNumber = 0;
  }
}
