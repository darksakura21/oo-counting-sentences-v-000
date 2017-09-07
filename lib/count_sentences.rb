require 'pry'

class String

  def sentence?
    self.end_with?("!", ".", "?")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sentence_count = self.split(".").length
    exclamation_count = self.split("!").length
    question_count = self.split("?").length

    total = sentence_count + exclamation_count + question_count

    total
  end
end
