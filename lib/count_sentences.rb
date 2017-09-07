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
    self.include?(".") ? sentence_count = self.split(".").length : sentence_count = 0
    self.include?("!") ? exclamation_count = self.split("!").length - 1 : exclamation_count = 0
    self.include?("?") ? question_count = self.split("?").length - 2: question_count = 0

    total = sentence_count + exclamation_count + question_count

    total
  end
end
