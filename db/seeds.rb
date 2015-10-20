class Question < ActiveRecord::Base
  questions = Question.create([{ question: 'Why is my code not working properly?', id: 100}])
  questions = Question.create([{ question: 'I visit Starbucks on a daily basis. Why have they never offered me free coffee in return for my business?', id: 200 }])
  questions = Question.create([{ question: 'Are there more cells in the brain than there are brains in the entire body?', id: 300 }])
  questions = Question.create([{ question: 'How can mirrors be real if our eyes are not real?', id: 400 }])
  questions = Question.create([{ question: 'Why did Jaden Smith delete his Twitter account?', id: 500 }])
end

class Answer < ActiveRecord::Base
  answers = Answer.create([{ answer: 'You are missing every single semicolon that this code required.', question_id: 100 }])
  answers = Answer.create([{ answer: 'How else do you think Howard Schultz became a billionare?', question_id: 200 }])
  answers = Answer.create([{ answer: 'People do not think the universe be like it is, but it do.', question_id: 300 }])
  answers = Answer.create([{ answer: 'Go to sleep, Jaden.', question_id: 400 }])
  answers = Answer.create([{ answer: 'Because he was out to break the hearts of millions.', question_id: 500 }])
end
