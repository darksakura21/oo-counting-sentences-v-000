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
    self.split(/[.?!]+/).count

    total = sentence_count + exclamation_count + question_count

    total
  end
end
