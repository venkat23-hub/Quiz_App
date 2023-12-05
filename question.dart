class Question {
  String questionText;
  List<String> options;
  int correctAnswerIndex;

  Question(this.questionText, this.options, this.correctAnswerIndex);
}

List<Question> questions = [
  Question( //1
    'What is the capital of France ?',
    ['London', 'Paris', 'Berlin', 'Madrid'],
    1, // Index 1 represents 'Paris' as the correct answer
  ),
  Question(//2
    'Which planet is known as the Red Planet ?',
    ['Mars', 'Jupiter', 'Venus', 'Mercury'],
    0, // Index 0 represents 'Mars' as the correct answer
  ),
  Question(//3
    '-------- is the hottest planet in our solar system ?',
    ['Mars', 'Jupiter', 'Venus', 'Mercury'],
    2, // Index 2 represents 'venus' as the correct answer
  ),
  Question(//4
    'A celestial body in space that orbits around a larger body is called a ',
    ['star', 'constellation', 'Natural satellite', 'Asteroid'],
    2, // Index 0 represents 'Mars' as the correct answer
  ),
  Question(//5
    'The planet with highest number of moons ?',
    ['Mars', 'Jupiter', 'Venus', 'Saturn'],
    3, // Index 0 represents 'Mars' as the correct answer
  ),
  Question(//6
    'The planet with two moons ?',
    ['Neptune', 'Jupiter', 'Mars', 'Mercury'],
    2, // Index 0 represents 'Mars' as the correct answer
  ),
  Question(//7
    'Which planet is called evening/morning star ?',
    ['Venus', 'Jupiter', 'Mars', 'Mercury'],
    0, // Index 0 represents 'Mars' as the correct answer
  ),
  Question(//8
    'The planet(s) with no moons is/are ?',
    ['Venus and Mars', 'Mars and Neptune', 'Mercury and Mars', 'Mercury and Venus'],
    3, // Index 0 represents 'Mars' as the correct answer
  ),
  Question(//9
    'How many moons does Uranus have ?',
    ['12', '14', '30', '27'],
    3, // Index 0 represents 'Mars' as the correct answer
  ),
  Question(//10
    'Titan is one of the moons of --------',
    ['Neptune', 'Jupiter', 'Mars', 'Saturn'],
    3, // Index 0 represents 'Mars' as the correct answer
  ),
];
